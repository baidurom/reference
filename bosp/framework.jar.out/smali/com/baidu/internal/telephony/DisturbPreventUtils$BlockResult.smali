.class public Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
.super Ljava/lang/Object;
.source "DisturbPreventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/telephony/DisturbPreventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockResult"
.end annotation


# instance fields
.field public reason:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    .line 67
    iput v0, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I

    .line 68
    return-void
.end method
