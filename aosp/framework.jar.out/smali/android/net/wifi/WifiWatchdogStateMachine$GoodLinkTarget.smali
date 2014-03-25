.class Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoodLinkTarget"
.end annotation


# instance fields
.field public final REDUCE_TIME_MS:I

.field public final RSSI_ADJ_DBM:I

.field public final SAMPLE_COUNT:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "adj"
    .parameter "count"
    .parameter "time"

    .prologue
    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    .line 988
    iput p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    .line 989
    iput p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    .line 990
    return-void
.end method
