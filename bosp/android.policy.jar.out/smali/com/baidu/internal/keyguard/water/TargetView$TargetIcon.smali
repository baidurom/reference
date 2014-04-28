.class Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
.super Ljava/lang/Object;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetIcon"
.end annotation


# instance fields
.field public mCruiseSeed:F

.field private mDraging:Z

.field private mIconState:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

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

.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/water/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/water/TargetView$IconState;)V
    .locals 2
    .parameter
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "xDip"
    .parameter "yDip"
    .parameter "iconState"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mDraging:Z

    .line 93
    iput-object p2, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 94
    iput-object p3, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    .line 95
    int-to-float v0, p4

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    .line 96
    int-to-float v0, p5

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    .line 97
    iget v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXBackup:F

    .line 98
    iget v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYBackup:F

    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    .line 100
    iput-object p6, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mIconState:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    .line 101
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/water/TargetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public adjustTargetIconPosition(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V
    .locals 3
    .parameter "targetHandle"

    .prologue
    const/high16 v2, 0x3f80

    .line 174
    iget v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXFixPoint:F

    iget v1, p1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    sub-float/2addr v0, v1

    sget v1, Lcom/baidu/internal/keyguard/water/TargetView;->mFixPointRatio:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    .line 175
    iget v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYFixPoint:F

    iget v1, p1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    sub-float/2addr v0, v1

    sget v1, Lcom/baidu/internal/keyguard/water/TargetView;->mFixPointRatio:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    .line 176
    return-void
.end method

.method public endDrag()V
    .locals 6

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$100(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->clearAnimation()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    new-instance v1, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/water/TargetView;->access$200(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v3

    iget v4, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    iget v5, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;FF)V

    #setter for: Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->access$102(Lcom/baidu/internal/keyguard/water/TargetView;Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    .line 134
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$100(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->setDuration(J)V

    .line 135
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$100(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/water/TargetView;->access$100(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$100(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    move-result-object v0

    new-instance v1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon$1;

    invoke-direct {v1, p0}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon$1;-><init>(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mDraging:Z

    .line 152
    return-void
.end method

.method public getState()Lcom/baidu/internal/keyguard/water/TargetView$IconState;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mIconState:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    return-object v0
.end method

.method public isDraging()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mDraging:Z

    return v0
.end method

.method public setIconState(Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V
    .locals 0
    .parameter "iconState"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mIconState:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    .line 164
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 117
    iput p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    .line 118
    iput p2, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    .line 119
    return-void
.end method

.method public setTargetHandle(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V
    .locals 3
    .parameter "targetHandle"

    .prologue
    .line 168
    sget v0, Lcom/baidu/internal/keyguard/water/TargetView;->mFixPointRatio:F

    iget v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    iget v2, p1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXFixPoint:F

    .line 169
    sget v0, Lcom/baidu/internal/keyguard/water/TargetView;->mFixPointRatio:F

    iget v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    iget v2, p1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYFixPoint:F

    .line 170
    return-void
.end method

.method public startDrag()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$100(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->clearAnimation()V

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mDraging:Z

    .line 127
    return-void
.end method

.method public updateCruisePosition()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a0

    const/high16 v8, 0x4000

    const-wide v6, 0x400921fb54442d18L

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    .local v0, currentTime:J
    sget-wide v2, Lcom/baidu/internal/keyguard/water/TargetView;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    mul-float/2addr v2, v8

    float-to-double v2, v2

    iget v4, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v9

    iput v2, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXCruisePoint:F

    .line 113
    sget-wide v2, Lcom/baidu/internal/keyguard/water/TargetView;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x44b0c000

    div-float/2addr v2, v3

    mul-float/2addr v2, v8

    float-to-double v2, v2

    iget v4, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    const/high16 v5, 0x40a0

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v9

    iput v2, p0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYCruisePoint:F

    .line 114
    return-void
.end method
