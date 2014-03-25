.class Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionHeight"
.end annotation


# static fields
.field private static final ACTION_MIN_HEIGHT_FULL:I = 0x3c

.field private static final ACTION_MIN_HEIGHT_HALF:I = 0x14


# instance fields
.field private mActualHeight:I

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mSuggestedHeight:I

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method private constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$2;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$2;-><init>(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)V

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    return-void
.end method

.method static synthetic access$2100(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;ZLjava/lang/Runnable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->refreshHeight(ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 765
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 765
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->isTransitioning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4702(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 765
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4800(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->doSetHeight(I)Z

    move-result v0

    return v0
.end method

.method private cancelTransitioning()V
    .locals 1

    .prologue
    .line 847
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 851
    :cond_0
    return-void
.end method

.method private changeHeightImmediately(I)Z
    .locals 2
    .parameter "height"

    .prologue
    .line 854
    iput p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mSuggestedHeight:I

    .line 855
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    move-result-object v0

    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V

    .line 856
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->doSetHeight(I)Z

    move-result v0

    return v0
.end method

.method private changeHeightSmoothly(ILjava/lang/Runnable;)Z
    .locals 8
    .parameter "height"
    .parameter "callback"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 794
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->isTransitioning()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v2, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mSuggestedHeight:I

    .line 796
    .local v2, targetHeight:I
    :goto_0
    if-eq v2, p1, :cond_5

    .line 799
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->cancelTransitioning()V

    .line 801
    iget-object v6, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;
    invoke-static {v6}, Lyi/support/v1/menu/HybridMenuPanel;->access$3400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    move-result-object v6

    invoke-virtual {v6}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 802
    iget v6, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mSuggestedHeight:I

    if-le v6, p1, :cond_3

    move v1, v4

    .line 803
    .local v1, shrinked:Z
    :goto_1
    iput p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mSuggestedHeight:I

    .line 804
    if-eqz v1, :cond_0

    iget-object v6, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
    invoke-static {v6}, Lyi/support/v1/menu/HybridMenuPanel;->access$3200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V

    .line 806
    :cond_0
    iget-object v6, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 807
    .local v0, from:I
    iget v3, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mSuggestedHeight:I

    .line 808
    .local v3, to:I
    invoke-direct {p0, v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->doSetHeight(I)Z

    .line 810
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v0, v6, v5

    aput v3, v6, v4

    invoke-static {v6}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 811
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 812
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x4040

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 813
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 814
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 816
    iget-object v5, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;

    invoke-direct {v6, p0, v1, p2}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;ZLjava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move v5, v4

    .line 838
    .end local v0           #from:I
    .end local v1           #shrinked:Z
    .end local v3           #to:I
    :cond_1
    :goto_2
    return v5

    .line 794
    .end local v2           #targetHeight:I
    :cond_2
    iget v2, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mActualHeight:I

    goto :goto_0

    .restart local v2       #targetHeight:I
    :cond_3
    move v1, v5

    .line 802
    goto :goto_1

    .line 833
    :cond_4
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->changeHeightImmediately(I)Z

    goto :goto_2

    .line 838
    :cond_5
    iget-object v4, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    goto :goto_2
.end method

.method private dipToPixels(F)I
    .locals 3
    .parameter "dips"

    .prologue
    .line 884
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 885
    .local v0, density:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private doSetHeight(I)Z
    .locals 2
    .parameter "height"

    .prologue
    .line 871
    iget v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mActualHeight:I

    if-eq v1, p1, :cond_0

    .line 872
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 873
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mActualHeight:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 874
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel;->forceLayout()V

    .line 876
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel;->requestLayout()V

    .line 877
    const/4 v1, 0x1

    .line 879
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getHeight()I
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mSuggestedHeight:I

    return v0
.end method

.method private isTransitioning()Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshHeight(ZLjava/lang/Runnable;)Z
    .locals 2
    .parameter "animation"
    .parameter "callback"

    .prologue
    .line 780
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v1

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$2700(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3c

    .line 781
    .local v0, height:I
    :goto_0
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->dipToPixels(F)I

    move-result v0

    .line 783
    if-eqz p1, :cond_1

    .line 784
    invoke-direct {p0, v0, p2}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->changeHeightSmoothly(ILjava/lang/Runnable;)Z

    move-result v1

    .line 789
    :goto_1
    return v1

    .line 780
    .end local v0           #height:I
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 786
    .restart local v0       #height:I
    :cond_1
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->cancelTransitioning()V

    .line 787
    invoke-direct {p0, v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->changeHeightImmediately(I)Z

    .line 788
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 789
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
