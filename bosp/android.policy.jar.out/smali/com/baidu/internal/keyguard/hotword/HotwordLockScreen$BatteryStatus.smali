.class Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;
.super Ljava/lang/Object;
.source "HotwordLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;
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
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->status:I

    .line 165
    iput p2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->level:I

    .line 166
    iput p3, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->plugged:I

    .line 167
    iput p4, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->health:I

    .line 168
    return-void
.end method
