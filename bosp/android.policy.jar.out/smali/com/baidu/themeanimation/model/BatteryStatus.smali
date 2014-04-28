.class public Lcom/baidu/themeanimation/model/BatteryStatus;
.super Ljava/lang/Object;
.source "BatteryStatus.java"


# instance fields
.field public final health:I

.field public final level:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "status"
    .parameter "level"
    .parameter "plugged"
    .parameter "health"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/baidu/themeanimation/model/BatteryStatus;->status:I

    .line 12
    iput p2, p0, Lcom/baidu/themeanimation/model/BatteryStatus;->level:I

    .line 13
    iput p3, p0, Lcom/baidu/themeanimation/model/BatteryStatus;->plugged:I

    .line 14
    iput p4, p0, Lcom/baidu/themeanimation/model/BatteryStatus;->health:I

    .line 15
    return-void
.end method
