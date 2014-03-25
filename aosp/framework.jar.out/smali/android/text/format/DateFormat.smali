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

.field public static final STANDALONE_MONTH:C = 'L'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 734
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 735
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 736
    const/4 v1, 0x1

    .line 767
    :cond_0
    :goto_0
    return v1

    .line 739
    :cond_1
    const/4 v1, 0x0

    .line 742
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 743
    add-int/lit8 p2, p2, -0x1

    .line 745
    :goto_1
    if-ge p1, p2, :cond_0

    .line 746
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 748
    .local v0, c:C
    if-ne v0, v3, :cond_3

    .line 750
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 752
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 753
    add-int/lit8 p2, p2, -0x1

    .line 754
    add-int/lit8 v1, v1, 0x1

    .line 755
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 758
    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 762
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 491
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v8, 0xa

    const/16 v9, 0x9

    .line 579
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 583
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 585
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 588
    const/4 v1, 0x1

    .line 589
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 591
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_1

    .line 592
    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 593
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 585
    :cond_0
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 597
    :cond_1
    :goto_2
    add-int v7, v2, v1

    if-ge v7, v3, :cond_2

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_2

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 603
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 660
    const/4 v4, 0x0

    .line 664
    .local v4, replacement:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_0

    .line 665
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 666
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 667
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_1

    .line 605
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 606
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 610
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 611
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 614
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_2
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 615
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 618
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_3
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 619
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_3

    const/16 v7, 0x14

    :goto_4
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 623
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .end local v4           #replacement:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 619
    goto :goto_4

    .line 626
    .end local v6           #temp:I
    :sswitch_4
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 628
    .restart local v6       #temp:I
    if-nez v6, :cond_4

    .line 629
    const/16 v6, 0xc

    .line 631
    :cond_4
    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 632
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 635
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_5
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 636
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 639
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_6
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 640
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 644
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_7
    invoke-static {p1, v1, v0}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;II)Ljava/lang/String;

    move-result-object v4

    .line 645
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 648
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_8
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 649
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 652
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_9
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 653
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 656
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 657
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 671
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_5
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    .line 672
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 674
    :goto_5
    return-object v7

    :cond_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 603
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x45 -> :sswitch_3
        0x4c -> :sswitch_7
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

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 502
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 504
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 506
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 709
    div-int/lit16 p0, p0, 0x3e8

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    .line 713
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    neg-int p0, p0

    .line 719
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 720
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 722
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 716
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .parameter "context"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
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
    .line 305
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 447
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_0

    .line 448
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 450
    .local v6, index:I
    const/4 v2, 0x0

    .line 451
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 452
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 454
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_4

    aget-char v1, v0, v5

    .line 455
    .local v1, c:C
    if-nez v2, :cond_0

    if-ne v1, v12, :cond_0

    .line 456
    const/4 v2, 0x1

    .line 457
    aput-char v12, v8, v6

    .line 458
    add-int/lit8 v6, v6, 0x1

    .line 461
    :cond_0
    if-nez v3, :cond_2

    if-eq v1, v11, :cond_1

    const/16 v10, 0x4c

    if-ne v1, v10, :cond_2

    .line 462
    :cond_1
    const/4 v3, 0x1

    .line 463
    aput-char v11, v8, v6

    .line 464
    add-int/lit8 v6, v6, 0x1

    .line 467
    :cond_2
    if-nez v4, :cond_3

    if-ne v1, v13, :cond_3

    .line 468
    const/4 v4, 0x1

    .line 469
    aput-char v13, v8, v6

    .line 470
    add-int/lit8 v6, v6, 0x1

    .line 454
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 473
    .end local v1           #c:C
    :cond_4
    return-object v8

    .line 447
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
    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
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
    .line 311
    const/4 v4, 0x0

    .line 312
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_17

    .line 314
    const-string v11, "dd"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_0

    const-string v1, "d"

    .line 315
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

    .line 316
    .local v3, monthValue:Ljava/lang/String;
    :goto_1
    const-string/jumbo v11, "yyyy"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_4

    const-string/jumbo v10, "y"

    .line 317
    .local v10, yearValue:Ljava/lang/String;
    :goto_2
    const-string v11, "EEEE"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_5

    const-string v8, "E"

    .line 319
    .local v8, weekValue:Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, day:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 321
    .local v2, month:I
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 322
    .local v9, year:I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 324
    .local v7, week:I
    if-ltz v7, :cond_11

    if-ltz v2, :cond_11

    if-ltz v0, :cond_11

    if-ltz v9, :cond_11

    .line 325
    const/4 v6, 0x0

    .line 326
    .local v6, template:Ljava/lang/String;
    if-ge v7, v0, :cond_b

    .line 327
    if-ge v9, v2, :cond_7

    if-ge v9, v0, :cond_7

    .line 328
    if-ge v2, v0, :cond_6

    .line 329
    const v11, 0x205005c

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
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

    .line 414
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

    .line 314
    .end local v5           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    :cond_0
    const-string v1, "dd"

    goto :goto_0

    .line 315
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

    .line 316
    .restart local v3       #monthValue:Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "yyyy"

    goto :goto_2

    .line 317
    .restart local v10       #yearValue:Ljava/lang/String;
    :cond_5
    const-string v8, "EEEE"

    goto :goto_3

    .line 332
    .restart local v0       #day:I
    .restart local v2       #month:I
    .restart local v6       #template:Ljava/lang/String;
    .restart local v7       #week:I
    .restart local v8       #weekValue:Ljava/lang/String;
    .restart local v9       #year:I
    :cond_6
    const v11, 0x205005d

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 333
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

    .line 335
    :cond_7
    if-ge v2, v0, :cond_9

    .line 336
    if-ge v0, v9, :cond_8

    .line 337
    const v11, 0x205005e

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 338
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

    .line 340
    :cond_8
    const v11, 0x205005f

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 341
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

    .line 344
    :cond_9
    if-ge v2, v9, :cond_a

    .line 345
    const v11, 0x205006a

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
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

    .line 348
    :cond_a
    const v11, 0x205006b

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 349
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

    .line 353
    :cond_b
    if-ge v9, v2, :cond_d

    if-ge v9, v0, :cond_d

    .line 354
    if-ge v2, v0, :cond_c

    .line 355
    const v11, 0x205006c

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 356
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

    .line 358
    :cond_c
    const v11, 0x205006d

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 359
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

    .line 361
    :cond_d
    if-ge v2, v0, :cond_f

    .line 362
    if-ge v0, v9, :cond_e

    .line 363
    const v11, 0x205006e

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 364
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

    .line 366
    :cond_e
    const v11, 0x205006f

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 367
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

    .line 370
    :cond_f
    if-ge v2, v9, :cond_10

    .line 371
    const v11, 0x205007a

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
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

    .line 374
    :cond_10
    const v11, 0x205007b

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 375
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

    .line 382
    .end local v6           #template:Ljava/lang/String;
    :cond_11
    if-ltz v2, :cond_17

    if-ltz v0, :cond_17

    if-ltz v9, :cond_17

    .line 383
    const v11, #string@numeric_date_template#t

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    .restart local v6       #template:Ljava/lang/String;
    if-ge v9, v2, :cond_13

    if-ge v9, v0, :cond_13

    .line 385
    if-ge v2, v0, :cond_12

    .line 386
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

    .line 404
    .end local v4           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    goto/16 :goto_5

    .line 388
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

    .line 390
    :cond_13
    if-ge v2, v0, :cond_15

    .line 391
    if-ge v0, v9, :cond_14

    .line 392
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

    .line 394
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

    .line 397
    :cond_15
    if-ge v2, v9, :cond_16

    .line 398
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

    .line 400
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

    .line 413
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

    .line 414
    .end local v4           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 424
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 434
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getMonthString(Ljava/util/Calendar;II)Ljava/lang/String;
    .locals 5
    .parameter "inDate"
    .parameter "count"
    .parameter "kind"

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0xa

    .line 678
    const/16 v2, 0x4c

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 679
    .local v1, standalone:Z
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 681
    .local v0, month:I
    const/4 v2, 0x4

    if-lt p1, v2, :cond_2

    .line 682
    if-eqz v1, :cond_1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getStandaloneMonthString(II)Ljava/lang/String;

    move-result-object v2

    .line 691
    :goto_1
    return-object v2

    .line 678
    .end local v0           #month:I
    .end local v1           #standalone:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 682
    .restart local v0       #month:I
    .restart local v1       #standalone:Z
    :cond_1
    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 685
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 686
    if-eqz v1, :cond_3

    invoke-static {v0, v4}, Landroid/text/format/DateUtils;->getStandaloneMonthString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v0, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 691
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 4
    .parameter "context"

    .prologue
    .line 268
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 271
    .local v0, b24:Z
    if-eqz v0, :cond_0

    .line 272
    const v1, #string@twenty_four_hour_time_format#t

    .line 277
    .local v1, res:I
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 274
    .end local v1           #res:I
    :cond_0
    const v1, #string@twelve_hour_time_format#t

    .restart local v1       #res:I
    goto :goto_0
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 698
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    .line 699
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 704
    :goto_0
    return-object v2

    .line 703
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 704
    .local v0, dst:Z
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #dst:Z
    :cond_1
    move v0, v2

    .line 703
    goto :goto_1
.end method

.method private static getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 6
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 728
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 729
    .local v0, year:I
    if-gt p1, v2, :cond_0

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "inFormat"

    .prologue
    const/4 v4, 0x0

    .line 521
    if-nez p0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v4

    .line 523
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 528
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 529
    const/4 v1, 0x1

    .line 530
    .local v1, count:I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 532
    .local v0, c:I
    const/16 v5, 0x27

    if-ne v0, v5, :cond_3

    .line 533
    invoke-static {p0, v2, v3}, Landroid/text/format/DateFormat;->skipQuotedText(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 528
    :cond_2
    add-int/2addr v2, v1

    goto :goto_1

    .line 534
    :cond_3
    const/16 v5, 0x73

    if-ne v0, v5, :cond_2

    .line 535
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 227
    .local v0, locale:Ljava/util/Locale;
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 228
    :try_start_0
    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v6

    .line 258
    .end local v0           #locale:Ljava/util/Locale;
    :goto_0
    return v5

    .line 231
    .restart local v0       #locale:Ljava/util/Locale;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 237
    .local v1, natural:Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 238
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 239
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, pattern:Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 242
    const-string v4, "24"

    .line 250
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :goto_1
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 251
    :try_start_1
    sput-object v0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 252
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 253
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    goto :goto_0

    .line 231
    .end local v1           #natural:Ljava/text/DateFormat;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 244
    .restart local v1       #natural:Ljava/text/DateFormat;
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_1

    .line 247
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v4, "12"

    goto :goto_1

    .line 253
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 258
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #natural:Ljava/text/DateFormat;
    :cond_3
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 543
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 544
    const/4 v1, 0x2

    .line 568
    :cond_0
    return v1

    .line 547
    :cond_1
    const/4 v1, 0x1

    .line 549
    .local v1, count:I
    add-int/lit8 p1, p1, 0x1

    .line 551
    :goto_0
    if-ge p1, p2, :cond_0

    .line 552
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 554
    .local v0, c:C
    if-ne v0, v3, :cond_2

    .line 555
    add-int/lit8 v1, v1, 0x1

    .line 557
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 558
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 563
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 5
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 771
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
