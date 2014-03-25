.class public Lcom/android/internal/telephony/DefaultSmsSimSettings;
.super Ljava/lang/Object;
.source "DefaultSmsSimSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSmsSimSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSimRemoved(J[JI)Z
    .locals 4
    .parameter "defSimId"
    .parameter "curSim"
    .parameter "numSim"

    .prologue
    .line 58
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 59
    const/4 v1, 0x0

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    const/4 v1, 0x1

    .line 63
    .local v1, isDefaultSimRemoved:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 64
    aget-wide v2, p2, v0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 65
    const/4 v1, 0x0

    .line 66
    goto :goto_0

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setSmsTalkDefaultSim(Landroid/content/ContentResolver;Ljava/util/List;[JI)V
    .locals 10
    .parameter "contentResolver"
    .parameter
    .parameter "simIdForSlot"
    .parameter "nSIMCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const-string v7, "ro.operator.optr"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, optr:Ljava/lang/String;
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nSIMCount"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , optr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v7, "sms_sim_setting"

    const-wide/16 v8, -0x5

    invoke-static {p0, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 26
    .local v2, oldSmsDefaultSIM:J
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oldSmsDefaultSIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-wide/16 v0, -0x5

    .line 28
    .local v0, defSIM:J
    const/4 v7, 0x1

    if-le p3, v7, :cond_5

    .line 29
    const-wide/16 v7, -0x5

    cmp-long v7, v2, v7

    if-nez v7, :cond_0

    .line 30
    const-string v7, "OP01"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 31
    const-string v7, "sms_sim_setting"

    const-wide/16 v8, -0x3

    invoke-static {p0, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 38
    :cond_0
    :goto_0
    const-string v7, "OP01"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 39
    const-wide/16 v0, -0x3

    .line 49
    :cond_1
    :goto_1
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defSIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget v7, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v2, v3, p2, v7}, Lcom/android/internal/telephony/DefaultSmsSimSettings;->isSimRemoved(J[JI)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    const-string v7, "sms_sim_setting"

    invoke-static {p0, v7, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 54
    :cond_2
    return-void

    .line 34
    :cond_3
    const-string v7, "sms_sim_setting"

    const-wide/16 v8, -0x1

    invoke-static {p0, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 41
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 44
    :cond_5
    const/4 v7, 0x1

    if-ne p3, v7, :cond_1

    .line 45
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/Telephony$SIMInfo;

    iget-wide v5, v7, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 46
    .local v5, simId:J
    const-string v7, "sms_sim_setting"

    invoke-static {p0, v7, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 47
    move-wide v0, v5

    goto :goto_1
.end method
