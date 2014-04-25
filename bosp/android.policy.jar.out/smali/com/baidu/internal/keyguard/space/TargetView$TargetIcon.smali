.class Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
.super Ljava/lang/Object;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetIcon"
.end annotation


# instance fields
.field public mCruiseSeed:F

.field private mDraging:Z

.field private mIconState:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

.field public mNormalImage:Landroid/graphics/Bitmap;

.field public mPressedImage:Landroid/graphics/Bitmap;

.field public mX:F

.field public mXBackup:F

.field public mXCruisePoint:F

.field public mXFixPoint:F

.field public mY:F

.field public mYBackup:F

.field public mYCruisePoint:F

.field public mYFixPoint:F

.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V
    .locals 2
    .parameter
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "xDip"
    .parameter "yDip"
    .parameter "iconState"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mDraging:Z

    .line 100
    iput-object p2, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 101
    iput-object p3, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    .line 102
    int-to-float v0, p4

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    .line 103
    int-to-float v0, p5

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    .line 104
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXBackup:F

    .line 105
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYBackup:F

    .line 106
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    .line 107
    iput-object p6, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mIconState:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    .line 108
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public adjustTargetIconPosition(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V
    .locals 3
    .parameter "targetHandle"

    .prologue
    const/high16 v2, 0x3f80

    .line 181
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXFixPoint:F

    iget v1, p1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    sub-float/2addr v0, v1

    sget v1, Lcom/baidu/internal/keyguard/space/TargetView;->mFixPointRatio:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    .line 182
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYFixPoint:F

    iget v1, p1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    sub-float/2addr v0, v1

    sget v1, Lcom/baidu/internal/keyguard/space/TargetView;->mFixPointRatio:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    .line 183
    return-void
.end method

.method public endDrag()V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->clearAnimation()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    new-instance v1, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/space/TargetView;->access$200(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v3

    iget v4, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    iget v5, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;FF)V

    #setter for: Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->access$102(Lcom/baidu/internal/keyguard/space/TargetView;Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    .line 141
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->setDuration(J)V

    .line 142
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/space/TargetView;->access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    move-result-object v0

    new-instance v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon$1;

    invoke-direct {v1, p0}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon$1;-><init>(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mDraging:Z

    .line 159
    return-void
.end method

.method public getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mIconState:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    return-object v0
.end method

.method public isDraging()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mDraging:Z

    return v0
.end method

.method public setIconState(Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V
    .locals 0
    .parameter "iconState"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mIconState:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    .line 171
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 124
    iput p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    .line 125
    iput p2, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    .line 126
    return-void
.end method

.method public setTargetHandle(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V
    .locals 3
    .parameter "targetHandle"

    .prologue
    .line 175
    sget v0, Lcom/baidu/internal/keyguard/space/TargetView;->mFixPointRatio:F

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    iget v2, p1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXFixPoint:F

    .line 176
    sget v0, Lcom/baidu/internal/keyguard/space/TargetView;->mFixPointRatio:F

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    iget v2, p1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYFixPoint:F

    .line 177
    return-void
.end method

.method public startDrag()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->clearAnimation()V

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mDraging:Z

    .line 134
    return-void
.end method

.method public updateCruisePosition()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a0

    const/high16 v8, 0x4000

    const-wide v6, 0x400921fb54442d18L

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    .local v0, currentTime:J
    sget-wide v2, Lcom/baidu/internal/keyguard/space/TargetView;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    mul-float/2addr v2, v8

    float-to-double v2, v2

    iget v4, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v9

    iput v2, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXCruisePoint:F

    .line 120
    sget-wide v2, Lcom/baidu/internal/keyguard/space/TargetView;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x44b0c000

    div-float/2addr v2, v3

    mul-float/2addr v2, v8

    float-to-double v2, v2

    iget v4, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    const/high16 v5, 0x40a0

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v9

    iput v2, p0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYCruisePoint:F

    .line 121
    return-void
.end method
