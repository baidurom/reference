.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 3890
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3847
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 3891
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 3892
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3836
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 3947
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 3948
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 3949
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3951
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3952
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 3957
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 3958
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 3968
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 3969
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3970
    return-void

    .line 3960
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 3963
    .end local v1           #vel:I
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3964
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3965
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 3989
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3991
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3992
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3994
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3995
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)V

    .line 3996
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3998
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3999
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 4000
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1402(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4002
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 4009
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4010
    return-void
.end method

.method public run()V
    .locals 30

    .prologue
    .line 4018
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 4020
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)I

    move-result v2

    if-nez v2, :cond_1

    .line 4022
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4215
    :cond_0
    :goto_0
    return-void

    .line 4025
    :cond_1
    const-string v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlingRunnable run into abnormal wrong case: touch mode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mScrollY = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4031
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4036
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v2, :cond_2

    .line 4037
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4040
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 4041
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 4045
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 4046
    .local v27, scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v22

    .line 4047
    .local v22, more:Z
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v29

    .line 4051
    .local v29, y:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v19, v2, v29

    .line 4054
    .local v19, delta:I
    if-lez v19, :cond_6

    .line 4056
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4057
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 4058
    .local v20, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4061
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 4075
    .end local v20           #firstView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4076
    .local v23, motionView:Landroid/view/View;
    const/16 v26, 0x0

    .line 4077
    .local v26, oldTop:I
    if-eqz v23, :cond_5

    .line 4078
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4082
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v19, :cond_7

    const/4 v15, 0x1

    .line 4083
    .local v15, atEnd:Z
    :goto_2
    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 4084
    const-string v2, "AbsListView"

    const-string v3, "Fling to end and can not go on scroll because the overscroll mode is never."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4064
    .end local v15           #atEnd:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v26           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .line 4065
    .local v25, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v3, v3, v25

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4067
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 4068
    .local v21, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4071
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_1

    .line 4082
    .end local v21           #lastView:Landroid/view/View;
    .end local v25           #offsetToLast:I
    .restart local v23       #motionView:Landroid/view/View;
    .restart local v26       #oldTop:I
    :cond_7
    const/4 v15, 0x0

    goto :goto_2

    .line 4094
    .restart local v15       #atEnd:Z
    :cond_8
    if-eqz v15, :cond_a

    .line 4095
    if-eqz v23, :cond_9

    .line 4097
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v26

    sub-int v2, v19, v2

    neg-int v4, v2

    .line 4098
    .local v4, overshoot:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    #calls: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 4101
    .end local v4           #overshoot:I
    :cond_9
    if-eqz v22, :cond_0

    .line 4102
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 4107
    :cond_a
    if-eqz v22, :cond_b

    if-nez v15, :cond_b

    .line 4108
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 4109
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4110
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4112
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4130
    .end local v15           #atEnd:Z
    .end local v19           #delta:I
    .end local v22           #more:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v26           #oldTop:I
    .end local v27           #scroller:Landroid/widget/OverScroller;
    .end local v29           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 4131
    .restart local v27       #scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4132
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)I

    move-result v9

    .line 4133
    .local v9, scrollY:I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v18

    .line 4135
    .local v18, currY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)I

    move-result v2

    if-ltz v2, :cond_c

    if-lez v18, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v2

    if-gtz v2, :cond_10

    if-ltz v18, :cond_10

    :cond_d
    const/16 v24, 0x1

    .line 4143
    .local v24, needChangeMode:Z
    :goto_3
    if-eqz v24, :cond_11

    .line 4144
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)I

    move-result v2

    neg-int v7, v2

    .line 4154
    .local v7, deltaY:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v13, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    #calls: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4156
    if-gtz v9, :cond_12

    if-lez v18, :cond_12

    const/16 v16, 0x1

    .line 4157
    .local v16, crossDown:Z
    :goto_5
    if-ltz v9, :cond_13

    if-gez v18, :cond_13

    const/16 v17, 0x1

    .line 4163
    .local v17, crossUp:Z
    :goto_6
    if-nez v16, :cond_e

    if-eqz v17, :cond_14

    .line 4164
    :cond_e
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 4165
    .local v28, velocity:I
    if-eqz v17, :cond_f

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 4168
    :cond_f
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4169
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4135
    .end local v7           #deltaY:I
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    .end local v24           #needChangeMode:Z
    .end local v28           #velocity:I
    :cond_10
    const/16 v24, 0x0

    goto :goto_3

    .line 4146
    .restart local v24       #needChangeMode:Z
    :cond_11
    sub-int v7, v18, v9

    .restart local v7       #deltaY:I
    goto :goto_4

    .line 4156
    :cond_12
    const/16 v16, 0x0

    goto :goto_5

    .line 4157
    .restart local v16       #crossDown:Z
    :cond_13
    const/16 v17, 0x0

    goto :goto_6

    .line 4171
    .restart local v17       #crossUp:Z
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4179
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    :cond_15
    if-eqz v24, :cond_18

    .line 4180
    const-string v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlingRunnable oComing back to \'real\' list flinging:velocity = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mItemCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->invalidateParentIfNeeded()V
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;)V

    .line 4186
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 4187
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4191
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 4192
    .restart local v28       #velocity:I
    if-lez v9, :cond_17

    .line 4193
    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 4196
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4199
    .end local v28           #velocity:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 4200
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4206
    .end local v7           #deltaY:I
    .end local v9           #scrollY:I
    .end local v18           #currY:I
    .end local v24           #needChangeMode:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 4207
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4209
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4018
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 3895
    if-gez p1, :cond_1

    move v2, v6

    .line 3896
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 3901
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 3903
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3904
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3913
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3914
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    #setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1402(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 3916
    :cond_0
    return-void

    .end local v2           #initialY:I
    :cond_1
    move v2, v1

    .line 3895
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 3939
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 3941
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3942
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3943
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3944
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 3973
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 3974
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 3979
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3980
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3981
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3982
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3973
    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3922
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3923
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3924
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3925
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3930
    :goto_0
    return-void

    .line 3927
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3928
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
