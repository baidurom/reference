.class final Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 469
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 8
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 474
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 513
    :goto_0
    :pswitch_0
    return-void

    .line 476
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected event type: ACTION_DOWN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 479
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 480
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v4, 0x4

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    .line 483
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 484
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Should have one pointer down."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 486
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 487
    .local v1, eventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 488
    .local v2, eventY:F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    iget-boolean v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    if-eqz v3, :cond_1

    .line 490
    iput-boolean v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    .line 491
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_0

    .line 494
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_0

    .line 498
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_0

    .line 502
    .end local v1           #eventX:F
    .end local v2           #eventY:F
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 503
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 504
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    .line 506
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    .line 507
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v4, 0x2

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    .line 510
    :pswitch_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected event type: ACTION_POINTER_UP"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    .line 517
    return-void
.end method
