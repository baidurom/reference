.class Landroid/widget/BounceGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "BounceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mUsingDistance:Z

.field final synthetic this$0:Landroid/widget/BounceGallery;


# direct methods
.method public constructor <init>(Landroid/widget/BounceGallery;)V
    .locals 2
    .parameter

    .prologue
    .line 1767
    iput-object p1, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/BounceGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1769
    return-void
.end method

.method static synthetic access$100(Landroid/widget/BounceGallery$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1755
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 3
    .parameter "scrollIntoSlots"

    .prologue
    .line 1842
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endFling: scrollIntoSlots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v2}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v2}, Landroid/widget/BounceGallery;->access$1800(Landroid/widget/BounceGallery;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVelocityTracker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v2}, Landroid/widget/BounceGallery;->access$1900(Landroid/widget/BounceGallery;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1850
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mUsingDistance:Z

    .line 1852
    if-eqz p1, :cond_0

    .line 1853
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    const/4 v1, -0x1

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0, v1}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    .line 1854
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #calls: Landroid/widget/BounceGallery;->scrollIntoSlots()V
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$2000(Landroid/widget/BounceGallery;)V

    .line 1856
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1774
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1859
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget v0, v0, Landroid/widget/BounceGallery;->mItemCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1860
    :cond_0
    invoke-direct {p0, v6}, Landroid/widget/BounceGallery$FlingRunnable;->endFling(Z)V

    .line 1974
    :cond_1
    :goto_0
    return-void

    .line 1864
    :cond_2
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #setter for: Landroid/widget/BounceGallery;->mShouldStopFling:Z
    invoke-static {v0, v2}, Landroid/widget/BounceGallery;->access$2102(Landroid/widget/BounceGallery;Z)Z

    .line 1866
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1868
    :pswitch_1
    iget-object v13, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1869
    .local v13, scroller:Landroid/widget/OverScroller;
    invoke-virtual {v13}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v11

    .line 1870
    .local v11, more:Z
    invoke-virtual {v13}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v14

    .line 1876
    .local v14, x:I
    iget v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    sub-int v10, v0, v14

    .line 1879
    .local v10, delta:I
    const-string v0, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before Fling run: mLastFlingX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",delta = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",more = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",current vel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    if-lez v10, :cond_3

    .line 1887
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget v4, v4, Landroid/widget/BounceGallery;->mFirstPosition:I

    #setter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v0, v4}, Landroid/widget/BounceGallery;->access$402(Landroid/widget/BounceGallery;I)I

    .line 1890
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->getWidth()I

    move-result v0

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2200(Landroid/widget/BounceGallery;)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2300(Landroid/widget/BounceGallery;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1900
    :goto_1
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, v10}, Landroid/widget/BounceGallery;->trackMotionScroll(I)V

    .line 1903
    const-string v0, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flinging: mScrollX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$2600(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mLastFlingX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",delta = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDistanceLeft = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDistanceLeft:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$2700(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNeedOverscroll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mNeedOverscroll:Z
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$2800(Landroid/widget/BounceGallery;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mUsingDistance = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->mUsingDistance:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mNeedOverscroll:Z
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$2800(Landroid/widget/BounceGallery;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mUsingDistance:Z

    if-nez v0, :cond_4

    .line 1911
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDistanceLeft:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2700(Landroid/widget/BounceGallery;)I

    move-result v4

    neg-int v1, v4

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2900(Landroid/widget/BounceGallery;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mOverflingDistance:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$3000(Landroid/widget/BounceGallery;)I

    move-result v7

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    #calls: Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Landroid/widget/BounceGallery;->access$3100(Landroid/widget/BounceGallery;IIIIIIIIZ)Z

    .line 1913
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #setter for: Landroid/widget/BounceGallery;->mNeedOverscroll:Z
    invoke-static {v0, v2}, Landroid/widget/BounceGallery;->access$2802(Landroid/widget/BounceGallery;Z)Z

    .line 1914
    if-eqz v11, :cond_1

    .line 1915
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$3200(Landroid/widget/BounceGallery;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mOverflingDistance:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$3000(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 1916
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    const/4 v2, 0x4

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0, v2}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    .line 1918
    const-string v0, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flinging after overscroll: mScrollX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$3300(Landroid/widget/BounceGallery;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",mLastFlingX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",mScroller.getCurrVelocity() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 1924
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1893
    :cond_3
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->getChildCount()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .line 1894
    .local v12, offsetToLast:I
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget v4, v4, Landroid/widget/BounceGallery;->mFirstPosition:I

    add-int/2addr v4, v12

    #setter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v0, v4}, Landroid/widget/BounceGallery;->access$402(Landroid/widget/BounceGallery;I)I

    .line 1897
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->getWidth()I

    move-result v0

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2400(Landroid/widget/BounceGallery;)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2500(Landroid/widget/BounceGallery;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_1

    .line 1930
    .end local v12           #offsetToLast:I
    :cond_4
    const-string v0, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flinging: mScrollX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$3400(Landroid/widget/BounceGallery;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",mLastFlingX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",x = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",mShouldStopFling = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mShouldStopFling:Z
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2100(Landroid/widget/BounceGallery;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",more = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mNeedOverscroll = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mNeedOverscroll:Z
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$2800(Landroid/widget/BounceGallery;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    if-eqz v11, :cond_5

    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mShouldStopFling:Z
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$2100(Landroid/widget/BounceGallery;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1935
    iput v14, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    .line 1936
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1938
    :cond_5
    invoke-direct {p0, v6}, Landroid/widget/BounceGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .line 1944
    .end local v10           #delta:I
    .end local v11           #more:Z
    .end local v13           #scroller:Landroid/widget/OverScroller;
    .end local v14           #x:I
    :pswitch_2
    iget-object v13, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1946
    .restart local v13       #scroller:Landroid/widget/OverScroller;
    invoke-virtual {v13}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1947
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$3500(Landroid/widget/BounceGallery;)I

    move-result v3

    .line 1948
    .local v3, scrollX:I
    invoke-virtual {v13}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    sub-int v1, v0, v3

    .line 1950
    .local v1, deltaX:I
    const-string v0, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OverFlinging: mScrollX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$3600(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mLastFlingX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",curx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",deltaX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mOverflingDistance:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$3000(Landroid/widget/BounceGallery;)I

    move-result v7

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    #calls: Landroid/widget/BounceGallery;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Landroid/widget/BounceGallery;->access$3700(Landroid/widget/BounceGallery;IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1958
    const-string v0, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OverFlinging: startSpringback: mScrollX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$3800(Landroid/widget/BounceGallery;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    invoke-virtual {p0}, Landroid/widget/BounceGallery$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 1961
    :cond_6
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 1962
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1965
    .end local v1           #deltaX:I
    .end local v3           #scrollX:I
    :cond_7
    const-string v0, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Over fling end here, so we finish the movement: mScrollX = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$3900(Landroid/widget/BounceGallery;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-direct {p0, v6}, Landroid/widget/BounceGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .line 1866
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v2, 0x0

    .line 1820
    iput-boolean v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->mUsingDistance:Z

    .line 1821
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$1400(Landroid/widget/BounceGallery;)I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v5, -0x8000

    .line 1822
    .local v5, min:I
    :goto_0
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$1500(Landroid/widget/BounceGallery;)I

    move-result v0

    if-lez v0, :cond_1

    move v6, v2

    .line 1823
    .local v6, max:I
    :goto_1
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v1}, Landroid/widget/BounceGallery;->access$1600(Landroid/widget/BounceGallery;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v3}, Landroid/widget/BounceGallery;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1824
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    const/4 v1, 0x4

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0, v1}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    .line 1826
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startOverfling: mScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v2}, Landroid/widget/BounceGallery;->access$1700(Landroid/widget/BounceGallery;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",initialVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v2}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 1832
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->post(Ljava/lang/Runnable;)Z

    .line 1833
    return-void

    .end local v5           #min:I
    .end local v6           #max:I
    :cond_0
    move v5, v2

    .line 1821
    goto :goto_0

    .line 1822
    .restart local v5       #min:I
    :cond_1
    const v6, 0x7fffffff

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1809
    iput-boolean v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->mUsingDistance:Z

    .line 1810
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v1}, Landroid/widget/BounceGallery;->access$1300(Landroid/widget/BounceGallery;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    const/4 v1, 0x4

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0, v1}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    .line 1812
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->invalidate()V

    .line 1813
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->post(Ljava/lang/Runnable;)Z

    .line 1817
    :goto_0
    return-void

    .line 1815
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    const/4 v1, -0x1

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0, v1}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1794
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mUsingDistance:Z

    .line 1795
    if-nez p1, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-direct {p0}, Landroid/widget/BounceGallery$FlingRunnable;->startCommon()V

    .line 1800
    const-string v0, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUsingDistance: distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mScrollX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mScrollX:I
    invoke-static {v3}, Landroid/widget/BounceGallery;->access$1100(Landroid/widget/BounceGallery;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iput v1, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    .line 1803
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    neg-int v3, p1

    iget-object v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mAnimationDuration:I
    invoke-static {v2}, Landroid/widget/BounceGallery;->access$1200(Landroid/widget/BounceGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1804
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    const/4 v1, 0x2

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0, v1}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    .line 1805
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1777
    iput-boolean v2, p0, Landroid/widget/BounceGallery$FlingRunnable;->mUsingDistance:Z

    .line 1778
    if-nez p1, :cond_0

    .line 1791
    :goto_0
    return-void

    .line 1780
    :cond_0
    invoke-direct {p0}, Landroid/widget/BounceGallery$FlingRunnable;->startCommon()V

    .line 1782
    const-string v0, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUsingVelocity: initialVelocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    if-gez p1, :cond_1

    move v1, v6

    .line 1786
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Landroid/widget/BounceGallery$FlingRunnable;->mLastFlingX:I

    .line 1787
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    const/4 v3, 0x2

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v0, v3}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    .line 1788
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1790
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    :cond_1
    move v1, v2

    .line 1785
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1836
    iget-object v0, p0, Landroid/widget/BounceGallery$FlingRunnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0, p0}, Landroid/widget/BounceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1837
    invoke-direct {p0, p1}, Landroid/widget/BounceGallery$FlingRunnable;->endFling(Z)V

    .line 1838
    return-void
.end method
