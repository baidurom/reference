.class Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;
.super Ljava/lang/Object;
.source "SpaceLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/SpaceLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryStatus"
.end annotation


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
    .line 354
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput p1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;->status:I

    .line 356
    iput p2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;->level:I

    .line 357
    iput p3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;->plugged:I

    .line 358
    iput p4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;->health:I

    .line 359
    return-void
.end method
