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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static submit(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "metricId"

    .prologue
    const/4 v7, 0x1

    .line 24
    invoke-static {p0}, Lyi/ubc/UBCServiceManager;->getInstance(Landroid/content/Context;)Lyi/ubc/UBCServiceManager;

    move-result-object v2

    .line 25
    .local v2, usm:Lyi/ubc/UBCServiceManager;
    if-nez v2, :cond_0

    .line 26
    const-string v3, "UBCUtils"

    const-string v4, "Fatal: cannot get UBCServiceManager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 31
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, p1, p2}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 33
    invoke-virtual {v0, v7}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 34
    invoke-virtual {v0, v7}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v3, "METRICID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 40
    const-string v3, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static submitIPSetting(Landroid/content/Context;S)V
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    const-wide/16 v7, 0x5e1

    .line 46
    invoke-static {p0}, Lyi/ubc/UBCServiceManager;->getInstance(Landroid/content/Context;)Lyi/ubc/UBCServiceManager;

    move-result-object v2

    .line 47
    .local v2, usm:Lyi/ubc/UBCServiceManager;
    if-nez v2, :cond_0

    .line 48
    const-string v3, "UBCUtils"

    const-string v4, "Fatal: cannot get UBCServiceManager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 53
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v7, v8}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 55
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 56
    invoke-virtual {v0, p1}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v3, "METRICID"

    invoke-virtual {v1, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    const-string v3, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static submitRingOnce(Landroid/content/Context;JLjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "metricId"
    .parameter "calleeNumber"

    .prologue
    .line 68
    invoke-static {p0}, Lyi/ubc/UBCServiceManager;->getInstance(Landroid/content/Context;)Lyi/ubc/UBCServiceManager;

    move-result-object v2

    .line 69
    .local v2, usm:Lyi/ubc/UBCServiceManager;
    if-nez v2, :cond_0

    .line 70
    const-string v3, "UBCUtils"

    const-string v4, "Fatal: cannot get UBCServiceManager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 75
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, p1, p2}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 77
    invoke-virtual {v0, p3}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v3, "METRICID"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 83
    const-string v3, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
