.class Lyi/support/v1/ContentDemensionSwitcher;
.super Ljava/lang/Object;
.source "ContentDemensionSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/ContentDemensionSwitcher$Demension;
    }
.end annotation


# instance fields
.field private mDemension:Lyi/support/v1/ContentDemensionSwitcher$Demension;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lyi/support/v1/ContentDemensionSwitcher$Demension;->STANDARD:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    iput-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher;->mDemension:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    .line 51
    new-instance v0, Lyi/support/v1/ContentDemensionSwitcher$1;

    invoke-direct {v0, p0}, Lyi/support/v1/ContentDemensionSwitcher$1;-><init>(Lyi/support/v1/ContentDemensionSwitcher;)V

    iput-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method static synthetic access$000(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lyi/support/v1/ContentDemensionSwitcher;->getActionBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lyi/support/v1/ContentDemensionSwitcher;->layoutContentToTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lyi/support/v1/ContentDemensionSwitcher;->showScrollUpAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lyi/support/v1/ContentDemensionSwitcher;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lyi/support/v1/ContentDemensionSwitcher;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lyi/support/v1/ContentDemensionSwitcher;->showScrollDownAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getActionBar(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "view"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, resId:I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getExactlyMeasureSpec(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "offset"

    .prologue
    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 132
    .local v0, size:I
    add-int v1, v0, p2

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method

.method private layoutContentToTop(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .parameter "content"
    .parameter "actionBar"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lyi/support/v1/ContentDemensionSwitcher;->getExactlyMeasureSpec(II)I

    move-result v1

    .line 78
    .local v1, widthSpec:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lyi/support/v1/ContentDemensionSwitcher;->getExactlyMeasureSpec(II)I

    move-result v0

    .line 79
    .local v0, heightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 81
    const/4 v2, 0x1

    .line 83
    .end local v0           #heightSpec:I
    .end local v1           #widthSpec:I
    :cond_0
    return v2
.end method

.method private showScrollDownAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .parameter "content"
    .parameter "actionBar"

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    .line 112
    .local v2, from:F
    move v4, v2

    .line 113
    .local v4, current:F
    invoke-static {p1, v3}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v9

    .line 114
    .local v9, residual:F
    cmpl-float v0, v9, v3

    if-lez v0, :cond_1

    .line 115
    add-float/2addr v4, v9

    .line 120
    :cond_0
    :goto_0
    new-instance v0, Lyi/support/v1/ContentDemensionSwitcher$3;

    const-wide/16 v5, 0x12c

    const/high16 v7, 0x4040

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lyi/support/v1/ContentDemensionSwitcher$3;-><init>(Lyi/support/v1/ContentDemensionSwitcher;FFFJFLandroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    return-void

    .line 116
    :cond_1
    cmpg-float v0, v9, v3

    if-gez v0, :cond_0

    .line 117
    move v4, v9

    goto :goto_0
.end method

.method private showScrollUpAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .parameter "content"
    .parameter "actionBar"

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 91
    .local v2, from:F
    move v4, v2

    .line 92
    .local v4, current:F
    invoke-static {p1, v3}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v10

    .line 93
    .local v10, residual:F
    cmpl-float v0, v10, v3

    if-lez v0, :cond_1

    .line 94
    move v4, v10

    .line 99
    :cond_0
    :goto_0
    new-instance v0, Lyi/support/v1/ContentDemensionSwitcher$2;

    const-wide/16 v5, 0x12c

    const/high16 v7, 0x4040

    move-object v1, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lyi/support/v1/ContentDemensionSwitcher$2;-><init>(Lyi/support/v1/ContentDemensionSwitcher;FFFJFLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void

    .line 95
    :cond_1
    cmpg-float v0, v10, v3

    if-gez v0, :cond_0

    .line 96
    add-float/2addr v4, v10

    goto :goto_0
.end method


# virtual methods
.method getDemension()Lyi/support/v1/ContentDemensionSwitcher$Demension;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher;->mDemension:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    return-object v0
.end method

.method setDemension(Landroid/app/Activity;Lyi/support/v1/ContentDemensionSwitcher$Demension;)V
    .locals 6
    .parameter "activity"
    .parameter "demension"

    .prologue
    .line 21
    invoke-virtual {p0}, Lyi/support/v1/ContentDemensionSwitcher;->getDemension()Lyi/support/v1/ContentDemensionSwitcher$Demension;

    move-result-object v5

    if-eq v5, p2, :cond_0

    .line 22
    const v5, #id@content#t

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 23
    .local v3, content:Landroid/view/View;
    if-nez v3, :cond_1

    .line 45
    .end local v3           #content:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 25
    .restart local v3       #content:Landroid/view/View;
    :cond_1
    invoke-direct {p0, v3}, Lyi/support/v1/ContentDemensionSwitcher;->getActionBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, actionBar:Landroid/view/View;
    sget-object v5, Lyi/support/v1/ContentDemensionSwitcher$Demension;->EXCLUSIVE:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    if-ne p2, v5, :cond_3

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 31
    .local v4, decorView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 32
    .local v1, background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 34
    .local v2, clone:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .end local v2           #clone:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, p0, Lyi/support/v1/ContentDemensionSwitcher;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 41
    .end local v1           #background:Landroid/graphics/drawable/Drawable;
    .end local v4           #decorView:Landroid/view/View;
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 43
    iput-object p2, p0, Lyi/support/v1/ContentDemensionSwitcher;->mDemension:Lyi/support/v1/ContentDemensionSwitcher$Demension;

    goto :goto_0

    .line 38
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
