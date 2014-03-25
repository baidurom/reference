.class public abstract Lcom/baidu/themeanimation/element/VisibleElement;
.super Lcom/baidu/themeanimation/element/Element;
.source "VisibleElement.java"

# interfaces
.implements Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;,
        Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x4

.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final RELATIVE_TO_PARENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseElement"

.field private static mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;


# instance fields
.field private mAlign:I

.field private mAlignV:I

.field private mAlpha:I

.field private mAngle:I

.field private mAngleY:I

.field mAnimationRunnable:Ljava/lang/Runnable;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field public mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

.field private mAttributAnimation:Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;

.field private mAwalysShow:Z

.field private mCategory:I

.field private mCenterX:I

.field private mCenterY:I

.field private mFlag:I

.field private mHasH:Z

.field private mHasW:Z

.field private mHasX:Z

.field private mHasY:Z

.field private mHeight:I

.field private mOnTimeTick:Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;

.field public mPaint:Landroid/graphics/Paint;

.field private mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

.field private mView:Landroid/view/View;

.field public mVisibility:Ljava/lang/Boolean;

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 709
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    sput-object v0, Lcom/baidu/themeanimation/element/VisibleElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    .line 34
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mX:I

    .line 35
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mY:I

    .line 36
    sget v0, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    iput v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mWidth:I

    .line 37
    sget v0, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    iput v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHeight:I

    .line 38
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasX:Z

    .line 39
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasY:Z

    .line 40
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasW:Z

    .line 41
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasH:Z

    .line 42
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCenterX:I

    .line 43
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCenterY:I

    .line 44
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngle:I

    .line 45
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngleY:I

    .line 49
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlign:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlignV:I

    .line 69
    iput-object v2, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;

    .line 330
    new-instance v0, Lcom/baidu/themeanimation/element/VisibleElement$1;

    invoke-direct {v0, p0}, Lcom/baidu/themeanimation/element/VisibleElement$1;-><init>(Lcom/baidu/themeanimation/element/VisibleElement;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 459
    iput v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mFlag:I

    .line 474
    iput-object v2, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    .line 484
    iput-object v2, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/VisibleElement;->setAngle(I)V

    .line 82
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlpha(I)V

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setCategory(I)V

    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 86
    new-instance v0, Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/VisibleElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngle:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method


# virtual methods
.method public actionVisibility(Ljava/lang/String;)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 417
    const-string v0, "toggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 421
    :cond_0
    return-void

    .line 418
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    .line 463
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    if-eqz v0, :cond_0

    .line 466
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mX:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mX:I

    .line 467
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mY:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mY:I

    .line 471
    :cond_0
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mFlag:I

    .line 472
    return-void
.end method

.method public clearAnimations()V
    .locals 2

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 558
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;->cancel()V

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/AnimatorParser;->stopAnimations()V

    .line 567
    :cond_2
    return-void
.end method

.method public clearView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 647
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 648
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 651
    :cond_0
    iput-object v2, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    .line 653
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    iput-object v2, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;

    .line 654
    return-void
.end method

.method public genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 668
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getW()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getH()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 669
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getW()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 670
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getH()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 671
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getX()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 672
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getY()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 674
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->hasW()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlign()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 676
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 682
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->hasH()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlignV()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 684
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 690
    :cond_1
    :goto_1
    return-object v0

    .line 677
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlign()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 678
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 685
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlignV()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 686
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 607
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlign:I

    return v0
.end method

.method public getAlignV()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlignV:I

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlpha:I

    return v0
.end method

.method public getAlwaysShow()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAwalysShow:Z

    return v0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngle:I

    return v0
.end method

.method public getAngleY()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngleY:I

    return v0
.end method

.method public getAnimationsStatus()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->getAnimationStatus()I

    move-result v0

    .line 573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAnimatorParser()Lcom/baidu/themeanimation/element/AnimatorParser;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCategory:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCenterY:I

    return v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHeight:I

    return v0
.end method

.method public getParentElement()Lcom/baidu/themeanimation/element/VisibleElement;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mVisibility:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mY:I

    return v0
.end method

.method public hasH()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasH:Z

    return v0
.end method

.method public hasView()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public hasW()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasW:Z

    return v0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasX:Z

    return v0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasY:Z

    return v0
.end method

.method public moveXY(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v1

    .line 156
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getY()I

    move-result v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 159
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getX()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 160
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onCategoryChange(I)V
    .locals 2
    .parameter "category"

    .prologue
    const/4 v1, 0x4

    .line 584
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 585
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCategory:I

    if-eq v0, v1, :cond_0

    .line 588
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCategory:I

    if-ne p1, v0, :cond_1

    .line 591
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;

    invoke-interface {v0, p1}, Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;->onTimeTick(Landroid/text/format/Time;)V

    .line 699
    :cond_0
    return-void
.end method

.method public releaseAttributAnimation()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAttributAnimation:Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;

    .line 75
    :cond_0
    return-void
.end method

.method public setAlign(I)V
    .locals 0
    .parameter "align"

    .prologue
    .line 428
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlign:I

    .line 429
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .parameter "align"

    .prologue
    .line 432
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlign(I)V

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlign(I)V

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlign(I)V

    goto :goto_0
.end method

.method public setAlignV(I)V
    .locals 0
    .parameter "alignV"

    .prologue
    .line 446
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlignV:I

    .line 447
    return-void
.end method

.method public setAlignV(Ljava/lang/String;)V
    .locals 1
    .parameter "alignV"

    .prologue
    .line 450
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlignV(I)V

    .line 457
    :goto_0
    return-void

    .line 452
    :cond_0
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlignV(I)V

    goto :goto_0

    .line 455
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlignV(I)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 313
    if-gez p1, :cond_3

    .line 314
    const/4 p1, 0x0

    .line 319
    :cond_0
    :goto_0
    iget v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlpha:I

    if-eq v1, p1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 322
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 326
    :cond_1
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAlpha:I

    .line 328
    .end local v0           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 315
    :cond_3
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 316
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setAlpha(Ljava/lang/String;)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAlpha(I)V

    .line 346
    :cond_0
    return-void
.end method

.method public setAlwaysShow(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAwalysShow:Z

    .line 378
    return-void
.end method

.method public setAlwaysShow(Ljava/lang/String;)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 381
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAwalysShow:Z

    .line 382
    return-void
.end method

.method public setAngle(I)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 273
    iget v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngle:I

    if-eq v1, p1, :cond_0

    .line 274
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngle:I

    .line 275
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 280
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAngle(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public setAngleY(I)V
    .locals 2
    .parameter "angleY"

    .prologue
    .line 293
    iget v1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngleY:I

    if-eq v1, p1, :cond_0

    .line 294
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAngleY:I

    .line 295
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 300
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setAngleY(Ljava/lang/String;)V
    .locals 1
    .parameter "angleY"

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setAngleY(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 516
    const-string v0, "play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->startAnimations()V

    .line 519
    :cond_0
    return-void
.end method

.method public setAnimationListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 722
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 353
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCategory:I

    .line 354
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 357
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCategory:I

    .line 358
    .local v0, c:I
    if-eqz p1, :cond_1

    .line 359
    const-string v1, "Charging"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    const/4 v0, 0x0

    .line 368
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setCategory(I)V

    .line 370
    :cond_1
    return-void

    .line 361
    :cond_2
    const-string v1, "BatteryLow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    :cond_3
    const-string v1, "BatteryFull"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 364
    const/4 v0, 0x2

    goto :goto_0

    .line 365
    :cond_4
    const-string v1, "Normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setCenterX(I)V
    .locals 2
    .parameter "centerX"

    .prologue
    .line 240
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 242
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCenterX:I

    .line 243
    return-void
.end method

.method public setCenterX(Ljava/lang/String;)V
    .locals 1
    .parameter "centerX"

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setCenterX(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public setCenterY(I)V
    .locals 2
    .parameter "centerY"

    .prologue
    .line 257
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 259
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mCenterY:I

    .line 260
    return-void
.end method

.method public setCenterY(Ljava/lang/String;)V
    .locals 1
    .parameter "centerY"

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setCenterY(I)V

    .line 266
    :cond_0
    return-void
.end method

.method public setH(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasH:Z

    .line 202
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 204
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHeight:I

    if-ne v0, p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHeight:I

    .line 209
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->updateView()V

    goto :goto_0
.end method

.method public setH(Ljava/lang/String;)V
    .locals 1
    .parameter "height"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setH(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public setOnTimeTick(Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;)V
    .locals 0
    .parameter "onTimeTick"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mOnTimeTick:Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;

    .line 703
    return-void
.end method

.method public setParentElement(Lcom/baidu/themeanimation/element/VisibleElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    .line 482
    return-void
.end method

.method public setRealH(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 196
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    div-float/2addr v0, v1

    float-to-int p1, v0

    .line 197
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->setH(I)V

    .line 198
    return-void
.end method

.method public setRealW(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 169
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    div-float/2addr v0, v1

    float-to-int p1, v0

    .line 170
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->setW(I)V

    .line 171
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 617
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getVisibleElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 618
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getVisibleElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 619
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getVisibleElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 620
    .local v0, elememt:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/baidu/themeanimation/element/VisibleElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v2

    .line 621
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 622
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v3, p1

    .line 625
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 618
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v0           #elememt:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_2
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    .line 631
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 632
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 634
    :cond_3
    return-void
.end method

.method public setVisibility(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mVisibility:Ljava/lang/Boolean;

    .line 390
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->startAnimations()V

    .line 401
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 402
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x1

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 405
    :cond_1
    return-void

    .line 396
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearAnimations()V

    goto :goto_0

    .line 402
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_1
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 408
    const-string v0, "toggle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 414
    :goto_1
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :cond_1
    invoke-static {p1}, Lcom/baidu/themeanimation/util/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setVisibility(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public setW(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasW:Z

    .line 175
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 177
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mWidth:I

    if-ne v0, p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mWidth:I

    .line 182
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->updateView()V

    goto :goto_0
.end method

.method public setW(Ljava/lang/String;)V
    .locals 1
    .parameter "width"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setW(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public setX(I)V
    .locals 3
    .parameter "posX"

    .prologue
    const/4 v2, 0x1

    .line 101
    iput-boolean v2, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasX:Z

    .line 103
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 105
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getX()I

    move-result v0

    sub-int/2addr p1, v0

    .line 111
    :cond_0
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mX:I

    if-ne v0, p1, :cond_1

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_1
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mX:I

    .line 116
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->updateView()V

    goto :goto_0
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "posX"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setX(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public setY(I)V
    .locals 3
    .parameter "posY"

    .prologue
    const/4 v2, 0x1

    .line 130
    iput-boolean v2, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mHasY:Z

    .line 132
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 134
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mParentElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 140
    :cond_0
    iget v0, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mY:I

    if-ne v0, p1, :cond_1

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_1
    iput p1, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mY:I

    .line 145
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->updateView()V

    goto :goto_0
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "posY"

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setY(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public sortAnimations()V
    .locals 5

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v2, tempAnimationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/AnimationElement;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    check-cast v0, Lcom/baidu/themeanimation/element/AnimationElement;

    .line 501
    .restart local v0       #animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/baidu/themeanimation/element/PositionAnimationElement;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 508
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    check-cast v0, Lcom/baidu/themeanimation/element/AnimationElement;

    .line 509
    .restart local v0       #animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 513
    .end local v0           #animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    .end local v1           #i:I
    .end local v2           #tempAnimationElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/AnimationElement;>;"
    :cond_2
    return-void
.end method

.method public startAnimations()V
    .locals 6

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v3

    .line 525
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 526
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->sortAnimations()V

    .line 529
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 530
    iget-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    .line 531
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 532
    iget-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 536
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAnimationElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/AnimationElement;

    .line 539
    .local v1, animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/AnimationElement;->generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 540
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 542
    iget-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 536
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #animationElement:Lcom/baidu/themeanimation/element/AnimationElement;
    .end local v2           #i:I
    :cond_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 549
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v4, :cond_3

    .line 550
    iget-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v4, v3}, Lcom/baidu/themeanimation/element/AnimatorParser;->generateAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 551
    iget-object v4, p0, Lcom/baidu/themeanimation/element/VisibleElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimatorParser;->startAnimations()V

    .line 554
    :cond_3
    return-void
.end method

.method public translateAnimationStage(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    sget-object v0, Lcom/baidu/themeanimation/element/VisibleElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getX()I

    move-result v2

    add-int/2addr v2, p1

    int-to-float v2, v2

    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 715
    sget-object v0, Lcom/baidu/themeanimation/element/VisibleElement;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getY()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 718
    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 661
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
