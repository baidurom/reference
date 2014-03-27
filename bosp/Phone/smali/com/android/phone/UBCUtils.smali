.class public Lcom/android/phone/UBCUtils;
.super Ljava/lang/Object;
.source "UBCUtils.java"


# static fields
.field public static final DIAL_ENTRY_METRIC_ID:J = 0xd03L

.field public static final DIAL_FREQUENCY_METRIC_ID:J = 0x5e1L

.field public static final DIAL_TIME_METRIC_ID:J = 0xd02L

.field public static final MT_ACCEPT_REPORTED_METRIC_ID:J = 0xd06L

.field public static final MT_REPORTED_METRIC_ID:J = 0xd04L

.field public static final RING_ONCE_METRIC_ID:J = 0xd05L

.field public static final RING_ONCE_METRIC_ID_EXT:J = 0xd08L

.field private static final TAG:Ljava/lang/String; = "UBCUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static submit(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "metricId"

    .prologue
    const/4 v7, 0x1

    .line 25
    invoke-static {p0}, Lyi/ubc/UBCServiceManager;->getInstance(Landroid/content/Context;)Lyi/ubc/UBCServiceManager;

    move-result-object v2

    .line 26
    .local v2, usm:Lyi/ubc/UBCServiceManager;
    if-nez v2, :cond_0

    .line 27
    const-string v3, "UBCUtils"

    const-string v4, "Fatal: cannot get UBCServiceManager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 32
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, p1, p2}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 34
    invoke-virtual {v0, v7}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 35
    invoke-virtual {v0, v7}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 38
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v3, "METRICID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 41
    const-string v3, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static submitIPSetting(Landroid/content/Context;S)V
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    const-wide/16 v7, 0x5e1

    .line 47
    invoke-static {p0}, Lyi/ubc/UBCServiceManager;->getInstance(Landroid/content/Context;)Lyi/ubc/UBCServiceManager;

    move-result-object v2

    .line 48
    .local v2, usm:Lyi/ubc/UBCServiceManager;
    if-nez v2, :cond_0

    .line 49
    const-string v3, "UBCUtils"

    const-string v4, "Fatal: cannot get UBCServiceManager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 54
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v7, v8}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 56
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 57
    invoke-virtual {v0, p1}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v3, "METRICID"

    invoke-virtual {v1, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    const-string v3, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static submitRingOnce(Landroid/content/Context;JLjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "metricId"
    .parameter "calleeNumber"

    .prologue
    .line 69
    invoke-static {p0}, Lyi/ubc/UBCServiceManager;->getInstance(Landroid/content/Context;)Lyi/ubc/UBCServiceManager;

    move-result-object v2

    .line 70
    .local v2, usm:Lyi/ubc/UBCServiceManager;
    if-nez v2, :cond_0

    .line 71
    const-string v3, "UBCUtils"

    const-string v4, "Fatal: cannot get UBCServiceManager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 76
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, p1, p2}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 78
    invoke-virtual {v0, p3}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 81
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v3, "METRICID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 84
    const-string v3, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
