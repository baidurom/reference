.class Landroid/widget/AbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 3839
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 3841
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mActivePointerId:I
    invoke-static {v5}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)I

    move-result v0

    .line 3842
    .local v0, activeId:I
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;

    move-result-object v3

    .line 3843
    .local v3, vt:Landroid/view/VelocityTracker;
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    #getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Landroid/widget/AbsListView$FlingRunnable;->access$1000(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v2

    .line 3844
    .local v2, scroller:Landroid/widget/OverScroller;
    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 3845
    :cond_0
    const-string v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Direct return : vt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",activeId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mScrollY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v7, v7, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    :goto_0
    return-void

    .line 3850
    :cond_1
    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mMaximumVelocity:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3851
    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    neg-float v4, v5

    .line 3859
    .local v4, yvel:F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v6, v6, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mMinimumVelocity:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3862
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-wide/16 v6, 0x28

    invoke-virtual {v5, p0, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3864
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, v5, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3865
    .local v1, orgTouchMode:I
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3870
    if-ne v1, v7, :cond_3

    .line 3871
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iput v7, v5, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3875
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 3873
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable$1;->this$1:Landroid/widget/AbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x3

    iput v6, v5, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1
.end method
