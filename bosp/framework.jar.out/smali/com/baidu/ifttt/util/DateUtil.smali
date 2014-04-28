.class public Lcom/baidu/ifttt/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMils(J)Ljava/lang/String;
    .locals 3
    .parameter "mils"

    .prologue
    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 15
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .local v1, format:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNextTimer(Ljava/lang/String;)J
    .locals 6
    .parameter "str"

    .prologue
    .line 31
    new-instance v1, Lcom/baidu/ifttt/util/FixedPeriodCron;

    invoke-direct {v1, p0}, Lcom/baidu/ifttt/util/FixedPeriodCron;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, cron:Lcom/baidu/ifttt/util/FixedPeriodCron;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 33
    .local v2, current:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 34
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/baidu/ifttt/util/FixedPeriodCron;->getClosestDateAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 36
    .local v3, result:Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Lcom/baidu/ifttt/util/FixedPeriodCron;->nextMatchInMillis(Ljava/util/Calendar;)Ljava/lang/Long;

    .line 37
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    const/16 v4, 0xc

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/baidu/ifttt/util/FixedPeriodCron;->getClosestDateAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    goto :goto_0

    .line 41
    :cond_0
    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 44
    :goto_1
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method public static parseMils(Ljava/lang/String;)J
    .locals 3
    .parameter "str"

    .prologue
    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 27
    :goto_0
    return-wide v1

    .line 23
    :catch_0
    move-exception v1

    .line 27
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static test()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public static testGetNextTimer(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "str"

    .prologue
    .line 48
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 49
    .local v0, d:Ljava/util/Date;
    invoke-static {p0}, Lcom/baidu/ifttt/util/DateUtil;->getNextTimer(Ljava/lang/String;)J

    move-result-wide v1

    .line 50
    .local v1, mils:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 51
    new-instance v0, Ljava/util/Date;

    .end local v0           #d:Ljava/util/Date;
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 53
    .restart local v0       #d:Ljava/util/Date;
    :cond_0
    return-object v0
.end method
