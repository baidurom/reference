.class public Lcom/baidu/internal/keyguard/space/utils/FpsCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# static fields
.field private static final MAX_INTERVAL:I = 0x1f4


# instance fields
.field private mDrawTimestamp:J

.field private mFpsCounter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public calculateFps()V
    .locals 8

    .prologue
    .line 14
    iget-wide v4, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mDrawTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mDrawTimestamp:J

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 18
    .local v2, now:J
    iget-wide v4, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mDrawTimestamp:J

    sub-long v0, v2, v4

    .line 19
    .local v0, interval:J
    iget v4, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mFpsCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mFpsCounter:I

    .line 20
    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 21
    const-string v4, "FPS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FPS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v6, 0x447a

    iget v7, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mFpsCounter:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    long-to-float v7, v0

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mFpsCounter:I

    .line 23
    iput-wide v2, p0, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->mDrawTimestamp:J

    .line 25
    :cond_1
    return-void
.end method
