.class Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;
.super Ljava/lang/Object;
.source "InCallScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreenView$FlingTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionEventCopy"
.end annotation


# instance fields
.field public t:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0
    .parameter "x2"
    .parameter "y2"
    .parameter "eventTime"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->x:F

    .line 75
    iput p2, p0, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->y:F

    .line 76
    iput-wide p3, p0, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->t:J

    .line 77
    return-void
.end method
