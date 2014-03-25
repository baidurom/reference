.class Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mGestureStarted:Z

.field private final mHoverAction:I

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;IZ)V
    .locals 1
    .parameter
    .parameter "hoverAction"
    .parameter "gestureStarted"

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    const-class v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    .line 1492
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mHoverAction:I

    .line 1493
    iput-boolean p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mGestureStarted:Z

    .line 1494
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1534
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    .line 1535
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    goto :goto_0
.end method

.method private isPending()Z
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPrototype:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public forceSendAndRemove()V
    .locals 1

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->run()V

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 1543
    :cond_0
    return-void
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Landroid/view/MotionEvent;ZII)V
    .locals 3
    .parameter "prototype"
    .parameter "touchExplorationInProgress"
    .parameter "pointerIdBits"
    .parameter "policyFlags"

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 1499
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1500
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    .line 1501
    iput p4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    .line 1502
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1900(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$2800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1503
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1900(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1521
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->clear()V

    .line 1522
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mGestureStarted:Z

    if-eqz v0, :cond_1

    .line 1553
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/16 v1, 0x200

    #calls: Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1563
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPrototype:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mHoverAction:I

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPointerIdBits:I

    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->mPolicyFlags:I

    #calls: Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$2900(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    .line 1564
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->clear()V

    .line 1565
    return-void

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1556
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1558
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->remove()V

    .line 1560
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto :goto_0
.end method
