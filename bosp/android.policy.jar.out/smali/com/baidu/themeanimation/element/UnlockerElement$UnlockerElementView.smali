.class public Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;
.super Landroid/widget/RelativeLayout;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/UnlockerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnlockerElementView"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockerElementView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownPoint:Landroid/graphics/Point;

.field private mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

.field private mReachedIndex:I

.field private mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

.field private mVibrator:Landroid/os/Vibrator;

.field private mp:Landroid/media/MediaPlayer;

.field private preDownPosX:F

.field private preDownPosY:F

.field final synthetic this$0:Lcom/baidu/themeanimation/element/UnlockerElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "unlockerElement"
    .parameter "handler"

    .prologue
    const/4 v3, -0x1

    .line 346
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    .line 347
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 546
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    .line 682
    iput v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    .line 349
    iput-object p3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    .line 350
    #setter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {p1, v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$102(Lcom/baidu/themeanimation/element/UnlockerElement;I)I

    .line 351
    iput-object p2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    .line 352
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mVibrator:Landroid/os/Vibrator;

    .line 353
    check-cast p4, Lcom/baidu/themeanimation/util/LockScreenHandler;

    .end local p4
    iput-object p4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 356
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateView(II)V

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V

    return-void
.end method

.method static synthetic access$302(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private getValidDeltaXY(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 30
    .parameter "event"

    .prologue
    .line 586
    new-instance v18, Landroid/graphics/Point;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 587
    .local v18, point:Landroid/graphics/Point;
    const/4 v12, 0x0

    .line 588
    .local v12, indexOfEndPoint:I
    const-wide v14, 0x402921fb54442d18L

    .line 590
    .local v14, minRadio:D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 591
    .local v24, x3:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 592
    .local v25, y3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v10

    .line 594
    .local v10, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosX:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosY:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getRadio(IIII)D

    move-result-wide v16

    .line 597
    .local v16, moveRadio:D
    const/4 v13, 0x0

    .line 598
    .local v13, lockPath:Lcom/baidu/themeanimation/element/LockPathElement;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_1

    .line 599
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v13

    .line 600
    if-eqz v13, :cond_0

    .line 601
    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/LockPathElement;->getEndPoint()Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    move/from16 v26, v0

    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/LockPathElement;->getEndPoint()Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    move/from16 v27, v0

    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/LockPathElement;->getStartPoint()Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    move/from16 v28, v0

    invoke-virtual {v13}, Lcom/baidu/themeanimation/element/LockPathElement;->getStartPoint()Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getRadio(IIII)D

    move-result-wide v5

    .line 603
    .local v5, currRadio:D
    sub-double v26, v5, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmpg-double v26, v26, v14

    if-gez v26, :cond_0

    .line 604
    sub-double v26, v5, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 605
    move v12, v11

    .line 598
    .end local v5           #currRadio:D
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 611
    :cond_1
    const/16 v20, 0x0

    .line 612
    .local v20, tempDeltaX0:I
    const/16 v21, 0x0

    .line 613
    .local v21, tempDeltaX1:I
    const/16 v22, 0x0

    .line 614
    .local v22, tempDeltaY0:I
    const/16 v23, 0x0

    .line 616
    .local v23, tempDeltaY1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v19

    .line 617
    .local v19, startPoint:Lcom/baidu/themeanimation/element/StartPointElement;
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    .line 618
    .local v9, endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v13

    .line 619
    if-eqz v13, :cond_8

    .line 620
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/LockPathElement;->getMinX()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/StartPointElement;->getX()I

    move-result v27

    sub-int v20, v26, v27

    .line 621
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/LockPathElement;->getMaxX()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/StartPointElement;->getX()I

    move-result v27

    sub-int v21, v26, v27

    .line 622
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/LockPathElement;->getMinY()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/StartPointElement;->getY()I

    move-result v27

    sub-int v22, v26, v27

    .line 623
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/LockPathElement;->getMaxY()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/themeanimation/element/StartPointElement;->getY()I

    move-result v27

    sub-int v23, v26, v27

    .line 625
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/LockPathElement;->getMaxX()I

    move-result v26

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/baidu/themeanimation/element/LockPathElement;->getMinX()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 626
    const/16 v20, 0x0

    .line 627
    const/16 v21, 0x0

    .line 630
    :cond_2
    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/themeanimation/element/LockPathElement;->getMaxY()I

    move-result v26

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/baidu/themeanimation/element/LockPathElement;->getMinY()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 631
    const/16 v22, 0x0

    .line 632
    const/16 v23, 0x0

    .line 642
    :cond_3
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 643
    add-int v20, v20, v21

    .line 644
    sub-int v21, v20, v21

    .line 645
    sub-int v20, v20, v21

    .line 648
    :cond_4
    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 649
    add-int v22, v22, v23

    .line 650
    sub-int v23, v22, v23

    .line 651
    sub-int v22, v22, v23

    .line 654
    :cond_5
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v7, v0

    .line 655
    .local v7, deltaX:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v8, v0

    .line 661
    .local v8, deltaY:I
    move/from16 v0, v20

    if-ge v7, v0, :cond_9

    .line 662
    move/from16 v7, v20

    .line 667
    :cond_6
    :goto_2
    move/from16 v0, v22

    if-ge v8, v0, :cond_a

    .line 668
    move/from16 v8, v22

    .line 677
    :cond_7
    :goto_3
    move-object/from16 v0, v18

    iput v7, v0, Landroid/graphics/Point;->x:I

    .line 678
    move-object/from16 v0, v18

    iput v8, v0, Landroid/graphics/Point;->y:I

    .line 679
    return-object v18

    .line 635
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    :cond_8
    const/16 v20, -0x1e0

    .line 636
    const/16 v21, 0x1e0

    .line 637
    const/16 v22, -0x320

    .line 638
    const/16 v23, 0x320

    goto :goto_1

    .line 663
    .restart local v7       #deltaX:I
    .restart local v8       #deltaY:I
    :cond_9
    move/from16 v0, v21

    if-le v7, v0, :cond_6

    .line 664
    move/from16 v7, v21

    goto :goto_2

    .line 669
    :cond_a
    move/from16 v0, v23

    if-le v8, v0, :cond_7

    .line 670
    move/from16 v8, v23

    goto :goto_3
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/element/UnlockerElement;->dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V

    .line 531
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v0, v2, v2, v1}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 540
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    .line 541
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/StartPointElement;->reset()V

    .line 542
    return-void
.end method

.method private setStateView(II)V
    .locals 4
    .parameter "state"
    .parameter "endPointIndex"

    .prologue
    .line 365
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/StartPointElement;)Landroid/view/View;

    .line 368
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;>;"
    if-ltz p2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 374
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/StartPointElement;

    invoke-direct {p0, p1, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/StartPointElement;)Landroid/view/View;

    .line 379
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 380
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 381
    if-eq v1, p2, :cond_0

    .line 382
    const/4 v3, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/StartPointElement;

    invoke-direct {p0, v3, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/StartPointElement;)Landroid/view/View;

    .line 380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 390
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/StartPointElement;

    invoke-direct {p0, p1, v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateViewInternal(ILcom/baidu/themeanimation/element/StartPointElement;)Landroid/view/View;

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/StartPointElement;->bringToFront()V

    .line 398
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #setter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2, p1}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$102(Lcom/baidu/themeanimation/element/UnlockerElement;I)I

    .line 399
    return-void
.end method

.method private setStateViewInternal(ILcom/baidu/themeanimation/element/StartPointElement;)Landroid/view/View;
    .locals 5
    .parameter "state"
    .parameter "startPoint"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-eq v2, p1, :cond_0

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    if-ne p1, v3, :cond_4

    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 407
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 408
    .local v0, needChangeViewBoolean:Ljava/lang/Boolean;
    packed-switch p1, :pswitch_data_0

    .line 434
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 436
    if-eqz p2, :cond_4

    .line 437
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {p2, v2, v3, v4}, Lcom/baidu/themeanimation/element/StartPointElement;->getView(Landroid/content/Context;ILandroid/os/Handler;)Landroid/view/View;

    move-result-object v1

    .line 438
    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->removeView(Landroid/view/View;)V

    .line 442
    :cond_3
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {p2, v2, p1, v3}, Lcom/baidu/themeanimation/element/StartPointElement;->getView(Landroid/content/Context;ILandroid/os/Handler;)Landroid/view/View;

    move-result-object v1

    .line 443
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {p2, p1}, Lcom/baidu/themeanimation/element/StartPointElement;->startAnimations(I)V

    .line 450
    .end local v0           #needChangeViewBoolean:Ljava/lang/Boolean;
    :cond_4
    return-object v1

    .line 410
    .restart local v0       #needChangeViewBoolean:Ljava/lang/Boolean;
    :pswitch_0
    invoke-virtual {p2}, Lcom/baidu/themeanimation/element/StartPointElement;->getPressedElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-nez v2, :cond_5

    .line 412
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 415
    :cond_5
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p2}, Lcom/baidu/themeanimation/element/StartPointElement;->getReachedElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    .line 417
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 422
    :pswitch_1
    invoke-virtual {p2}, Lcom/baidu/themeanimation/element/StartPointElement;->getReachedElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    .line 423
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getRadio(IIII)D
    .locals 10
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 549
    const-wide/16 v2, 0x0

    .line 551
    .local v2, radio:D
    sub-int v4, p3, p1

    .line 552
    .local v4, x:I
    sub-int v5, p4, p2

    .line 556
    .local v5, y:I
    if-lez v4, :cond_2

    .line 557
    const-wide v2, 0x3ff921fb54442d18L

    .line 558
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 559
    .local v0, angle:D
    if-lez v5, :cond_1

    .line 560
    sub-double/2addr v2, v0

    .line 582
    .end local v0           #angle:D
    :cond_0
    :goto_0
    return-wide v2

    .line 561
    .restart local v0       #angle:D
    :cond_1
    if-gez v5, :cond_0

    .line 562
    add-double/2addr v2, v0

    goto :goto_0

    .line 564
    .end local v0           #angle:D
    :cond_2
    if-gez v4, :cond_4

    .line 565
    const-wide v2, 0x4012d97c7f3321d2L

    .line 566
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 567
    .restart local v0       #angle:D
    if-lez v5, :cond_3

    .line 568
    add-double/2addr v2, v0

    goto :goto_0

    .line 569
    :cond_3
    if-gez v5, :cond_0

    .line 570
    sub-double/2addr v2, v0

    goto :goto_0

    .line 573
    .end local v0           #angle:D
    :cond_4
    if-lez v5, :cond_5

    .line 574
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 575
    :cond_5
    if-gez v5, :cond_6

    .line 576
    const-wide v2, 0x400921fb54442d18L

    goto :goto_0

    .line 578
    :cond_6
    const-wide v2, 0x7fefffffffffffffL

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 686
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 687
    .local v7, result:Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 688
    .local v5, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 690
    .local v6, posY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 803
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    .line 699
    :pswitch_0
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 701
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v8, v5, v6}, Lcom/baidu/themeanimation/element/UnlockerElement;->inStartPoint(FF)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 706
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    .line 707
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/element/UnlockerElement;->dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V

    .line 709
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget-object v9, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 711
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 719
    :goto_1
    iput v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosX:F

    .line 720
    iput v6, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->preDownPosY:F

    .line 722
    const/4 v8, -0x1

    iput v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    goto :goto_0

    .line 716
    :cond_0
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1

    .line 728
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getValidDeltaXY(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v4

    .line 730
    .local v4, point:Landroid/graphics/Point;
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v8

    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Lcom/baidu/themeanimation/element/StartPointElement;->moveBy(II)V

    .line 732
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e0

    const/16 v11, 0x320

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->invalidate(IIII)V

    .line 740
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget-object v9, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/themeanimation/element/StartPointElement;->getX()I

    move-result v9

    iget v10, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/themeanimation/element/StartPointElement;->getY()I

    move-result v10

    iget v11, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->inEndPoint(FF)I

    move-result v0

    .line 743
    .local v0, currReachedIndex:I
    if-gez v0, :cond_2

    .line 746
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v8}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 750
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    .line 762
    :cond_1
    :goto_2
    iput v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    .line 765
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget-object v9, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mDownPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v10

    invoke-virtual {v8, v9, v4, v10}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    goto/16 :goto_0

    .line 753
    :cond_2
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v8}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v8}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 757
    :cond_3
    iget v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    if-eq v8, v0, :cond_1

    .line 758
    const/4 v8, 0x2

    invoke-virtual {p0, v8, v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V

    goto :goto_2

    .line 770
    .end local v0           #currReachedIndex:I
    .end local v4           #point:Landroid/graphics/Point;
    :pswitch_2
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v8}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 771
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/element/UnlockerElement;->dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V

    .line 773
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V

    .line 792
    :goto_3
    const/4 v8, -0x1

    iput v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    goto/16 :goto_0

    .line 777
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mUnlockerElement:Lcom/baidu/themeanimation/element/UnlockerElement;

    iget v9, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mReachedIndex:I

    invoke-virtual {v8, v9}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoint(I)Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    move-result-object v2

    .line 778
    .local v2, endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 779
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 780
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "just_unlock"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 786
    :goto_4
    iget-object v8, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v8, v3}, Lcom/baidu/themeanimation/util/LockScreenHandler;->startIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 787
    .end local v2           #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 788
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 782
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    :cond_5
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 783
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "just_unlock"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 796
    .end local v2           #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V

    goto/16 :goto_0

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setTouchState(II)V
    .locals 9
    .parameter "state"
    .parameter "endPointIndex"

    .prologue
    const/4 v8, 0x2

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/themeanimation/util/FileUtil;->getLockScreenFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, soundDirString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 460
    .local v4, soundFileName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 475
    :goto_0
    if-eqz v4, :cond_2

    .line 483
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v3, soundFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 488
    .local v1, fis:Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    .line 489
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 490
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    .line 493
    :cond_0
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    if-nez v5, :cond_1

    .line 494
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    .line 497
    :cond_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 498
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 499
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 500
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView$1;

    invoke-direct {v6, p0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView$1;-><init>(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #soundFile:Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v5

    if-eq v5, p1, :cond_3

    if-ltz p1, :cond_3

    if-le p1, v8, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v5

    if-ne v5, v8, :cond_7

    if-ne p1, v8, :cond_7

    .line 520
    :cond_4
    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I

    move-result v5

    if-eq v5, v8, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/util/FileUtil;->isTactileFeedbackEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 523
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 525
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setStateView(II)V

    .line 527
    :cond_7
    return-void

    .line 462
    :pswitch_0
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/StartPointElement;->getNormalSound()Ljava/lang/String;

    move-result-object v4

    .line 463
    goto/16 :goto_0

    .line 466
    :pswitch_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/StartPointElement;->getPressedSound()Ljava/lang/String;

    move-result-object v4

    .line 467
    goto/16 :goto_0

    .line 470
    :pswitch_2
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->this$0:Lcom/baidu/themeanimation/element/UnlockerElement;

    #getter for: Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;
    invoke-static {v5}, Lcom/baidu/themeanimation/element/UnlockerElement;->access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/StartPointElement;->getReachedSound()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "audio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "play sound exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    .line 510
    iget-object v5, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    goto/16 :goto_1

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
