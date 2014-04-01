.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final MAX_ACCELERATION:F = 20.0f


# instance fields
.field absPosition:F

.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 4574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4597
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4598
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 9
    .parameter "off"
    .parameter "time"
    .parameter "axis"

    .prologue
    .line 4623
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_5

    .line 4624
    const/high16 v6, 0x4316

    mul-float/2addr v6, p1

    float-to-long v3, v6

    .line 4625
    .local v3, normTime:J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v6, :cond_1

    .line 4626
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reversed to positive!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4628
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4629
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4630
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4632
    :cond_1
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4650
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_4

    .line 4651
    iget-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v1, p2, v6

    .line 4652
    .local v1, delta:J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4653
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4654
    .local v0, acc:F
    cmp-long v6, v1, v3

    if-gez v6, :cond_a

    .line 4656
    sub-long v6, v3, v1

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 4657
    .local v5, scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    mul-float/2addr v0, v5

    .line 4658
    :cond_2
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " accelerate: off="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " normTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " acc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    :cond_3
    const/high16 v6, 0x41a0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_9

    .end local v0           #acc:F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4672
    .end local v1           #delta:J
    .end local v5           #scale:F
    :cond_4
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4673
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    return v6

    .line 4633
    .end local v3           #normTime:J
    :cond_5
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_8

    .line 4634
    neg-float v6, p1

    const/high16 v7, 0x4316

    mul-float/2addr v6, v7

    float-to-long v3, v6

    .line 4635
    .restart local v3       #normTime:J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v6, :cond_7

    .line 4636
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reversed to negative!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    :cond_6
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4638
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4639
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4640
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4642
    :cond_7
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto/16 :goto_0

    .line 4644
    .end local v3           #normTime:J
    :cond_8
    const-wide/16 v3, 0x0

    .restart local v3       #normTime:J
    goto/16 :goto_0

    .line 4661
    .restart local v0       #acc:F
    .restart local v1       #delta:J
    .restart local v5       #scale:F
    :cond_9
    const/high16 v0, 0x41a0

    goto :goto_1

    .line 4664
    .end local v5           #scale:F
    :cond_a
    sub-long v6, v1, v3

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 4665
    .restart local v5       #scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_b

    div-float/2addr v0, v5

    .line 4666
    :cond_b
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deccelerate: off="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " normTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " acc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    :cond_c
    const/high16 v6, 0x3f80

    cmpl-float v6, v0, v6

    if-lez v6, :cond_d

    .end local v0           #acc:F
    :goto_3
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto/16 :goto_2

    .restart local v0       #acc:F
    :cond_d
    const/high16 v0, 0x3f80

    goto :goto_3
.end method

.method generate(F)I
    .locals 8
    .parameter "precision"

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x4000

    const/high16 v6, 0x3f80

    .line 4688
    const/4 v2, 0x0

    .line 4689
    .local v2, movement:I
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4691
    :goto_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_1

    move v1, v3

    .line 4692
    .local v1, dir:I
    :goto_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v4, :pswitch_data_0

    .line 4725
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    .line 4726
    :cond_0
    return v2

    .line 4691
    .end local v1           #dir:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 4697
    .restart local v1       #dir:I
    :pswitch_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    cmpg-float v4, v4, p1

    if-ltz v4, :cond_0

    .line 4700
    add-int/2addr v2, v1

    .line 4701
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4702
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 4708
    :pswitch_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 4711
    add-int/2addr v2, v1

    .line 4712
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4713
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    if-lez v1, :cond_2

    const/high16 v4, -0x4000

    :goto_2
    add-float/2addr v4, v7

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4714
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    .line 4715
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    :cond_2
    move v4, v5

    .line 4713
    goto :goto_2

    .line 4728
    :cond_3
    add-int/2addr v2, v1

    .line 4729
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    if-ltz v1, :cond_4

    const/high16 v4, -0x4080

    :goto_3
    add-float/2addr v4, v7

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4730
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->absPosition:F

    .line 4731
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4732
    .local v0, acc:F
    const v4, 0x3f8ccccd

    mul-float/2addr v0, v4

    .line 4733
    const/high16 v4, 0x41a0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_5

    .end local v0           #acc:F
    :goto_4
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    :cond_4
    move v4, v6

    .line 4729
    goto :goto_3

    .line 4733
    .restart local v0       #acc:F
    :cond_5
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_4

    .line 4692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .parameter "_step"

    .prologue
    .line 4604
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4605
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4606
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4607
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4608
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4609
    return-void
.end method
