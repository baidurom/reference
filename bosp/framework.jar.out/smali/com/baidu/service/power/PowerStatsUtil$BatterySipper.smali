.class public Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;
.super Ljava/lang/Object;
.source "PowerStatsUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/power/PowerStatsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatterySipper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public percent:D

.field public pkgLabel:Ljava/lang/String;

.field public power:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .parameter "pkgLabel"
    .parameter "power"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->pkgLabel:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->power:D

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 48
    iget-wide v0, p1, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->power:D

    iget-wide v2, p0, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->power:D

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;->compareTo(Lcom/baidu/service/power/PowerStatsUtil$BatterySipper;)I

    move-result v0

    return v0
.end method
