.class Landroid/os/BatteryStats$1;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/BatteryStats$TimerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/BatteryStats;


# direct methods
.method constructor <init>(Landroid/os/BatteryStats;)V
    .locals 0
    .parameter

    .prologue
    .line 1537
    iput-object p1, p0, Landroid/os/BatteryStats$1;->this$0:Landroid/os/BatteryStats;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 1540
    iget-wide v0, p1, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 1541
    .local v0, lhsTime:J
    iget-wide v2, p2, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 1542
    .local v2, rhsTime:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1543
    const/4 v4, 0x1

    .line 1548
    :goto_0
    return v4

    .line 1545
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1546
    const/4 v4, -0x1

    goto :goto_0

    .line 1548
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1537
    check-cast p1, Landroid/os/BatteryStats$TimerEntry;

    .end local p1
    check-cast p2, Landroid/os/BatteryStats$TimerEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryStats$1;->compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I

    move-result v0

    return v0
.end method
