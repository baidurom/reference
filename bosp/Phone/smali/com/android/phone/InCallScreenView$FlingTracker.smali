.class Lcom/android/phone/InCallScreenView$FlingTracker;
.super Ljava/lang/Object;
.source "InCallScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;
    }
.end annotation


# static fields
.field static sTracker:Lcom/android/phone/InCallScreenView$FlingTracker;


# instance fields
.field final DECAY:F

.field final MAX_EVENTS:I

.field mEventBuf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;",
            ">;"
        }
    .end annotation
.end field

.field mVX:F

.field mVY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->MAX_EVENTS:I

    .line 69
    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->DECAY:F

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVY:F

    .line 82
    return-void
.end method

.method static obtain()Lcom/android/phone/InCallScreenView$FlingTracker;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/phone/InCallScreenView$FlingTracker;->sTracker:Lcom/android/phone/InCallScreenView$FlingTracker;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/phone/InCallScreenView$FlingTracker;

    invoke-direct {v0}, Lcom/android/phone/InCallScreenView$FlingTracker;-><init>()V

    sput-object v0, Lcom/android/phone/InCallScreenView$FlingTracker;->sTracker:Lcom/android/phone/InCallScreenView$FlingTracker;

    .line 127
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreenView$FlingTracker;->sTracker:Lcom/android/phone/InCallScreenView$FlingTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public computeCurrentVelocity(J)V
    .locals 12
    .parameter "timebase"

    .prologue
    .line 90
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVY:F

    iput v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVX:F

    .line 91
    const/4 v5, 0x0

    .line 92
    .local v5, last:Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;
    const/4 v6, 0x0

    .line 93
    .local v6, totalweight:F
    const/high16 v7, 0x4120

    .line 94
    .local v7, weight:F
    iget-object v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 95
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;

    .line 97
    .local v3, event:Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;
    if-eqz v5, :cond_0

    .line 98
    iget-wide v8, v3, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->t:J

    iget-wide v10, v5, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->t:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    long-to-float v9, p1

    div-float v0, v8, v9

    .line 99
    .local v0, dt:F
    iget v8, v3, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->x:F

    iget v9, v5, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->x:F

    sub-float v1, v8, v9

    .line 100
    .local v1, dx:F
    iget v8, v3, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->y:F

    iget v9, v5, Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;->y:F

    sub-float v2, v8, v9

    .line 101
    .local v2, dy:F
    iget v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVX:F

    mul-float v9, v7, v1

    div-float/2addr v9, v0

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVX:F

    .line 102
    iget v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVY:F

    mul-float v9, v7, v2

    div-float/2addr v9, v0

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVY:F

    .line 103
    add-float/2addr v6, v7

    .line 104
    const/high16 v8, 0x3f40

    mul-float/2addr v7, v8

    .line 106
    .end local v0           #dt:F
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_0
    move-object v5, v3

    .line 107
    goto :goto_0

    .line 108
    .end local v3           #event:Lcom/android/phone/InCallScreenView$FlingTracker$MotionEventCopy;
    :cond_1
    iget v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVX:F

    div-float/2addr v8, v6

    iput v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVX:F

    .line 109
    iget v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVY:F

    div-float/2addr v8, v6

    iput v8, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVY:F

    .line 111
    return-void
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVX:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mVY:F

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 120
    return-void
.end method
