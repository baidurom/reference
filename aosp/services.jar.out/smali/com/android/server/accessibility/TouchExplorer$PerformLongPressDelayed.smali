.class final Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .parameter

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1389
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    .line 1474
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    goto :goto_0
.end method


# virtual methods
.method public isPending()Z
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .locals 3
    .parameter "prototype"
    .parameter "policyFlags"

    .prologue
    .line 1394
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    .line 1395
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    .line 1396
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1900(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1397
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1900(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1402
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    .line 1404
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 1413
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$2100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1421
    .local v6, pointerId:I
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 1423
    .local v7, pointerIndex:I
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v4

    .line 1425
    .local v4, lastExploreEvent:Landroid/view/MotionEvent;
    if-nez v4, :cond_3

    .line 1428
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1429
    .local v3, focusBounds:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1430
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 1431
    .local v1, clickLocationX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 1457
    .end local v3           #focusBounds:Landroid/graphics/Rect;
    .local v2, clickLocationY:I
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I
    invoke-static {v8, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$2202(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1458
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v1

    #setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1459
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v2

    #setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2402(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1461
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    #calls: Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2500(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1463
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/4 v9, 0x4

    #setter for: Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2602(Lcom/android/server/accessibility/TouchExplorer;I)I

    .line 1464
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget v10, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    #calls: Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V
    invoke-static {v8, v9, v10}, Lcom/android/server/accessibility/TouchExplorer;->access$2700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V

    .line 1465
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    goto :goto_0

    .line 1439
    .end local v1           #clickLocationX:I
    .end local v2           #clickLocationY:I
    :cond_3
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1440
    .local v5, lastExplorePointerIndex:I
    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v1, v8

    .line 1441
    .restart local v1       #clickLocationX:I
    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v2, v8

    .line 1442
    .restart local v2       #clickLocationY:I
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1443
    .local v0, activeWindowBounds:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v9}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 1444
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowBounds(Landroid/graphics/Rect;)Z

    .line 1445
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1446
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1447
    .restart local v3       #focusBounds:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1448
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1449
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 1450
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    goto/16 :goto_1
.end method
