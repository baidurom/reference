.class public Lyi/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private mMajorWeight:F

.field private mMinorWeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v2, 0x3f666666

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object v1, Lcom/yi/internal/R$styleable;->WeightedLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lyi/widget/WeightedLinearLayout;->mMajorWeight:F

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lyi/widget/WeightedLinearLayout;->mMinorWeight:F

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 36
    invoke-virtual {p0}, Lyi/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 37
    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 38
    .local v4, screenWidth:I
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v8, :cond_2

    const/4 v1, 0x1

    .line 40
    .local v1, isPortrait:Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 42
    .local v6, widthMode:I
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 44
    invoke-virtual {p0}, Lyi/widget/WeightedLinearLayout;->getMeasuredWidth()I

    move-result v5

    .line 45
    .local v5, width:I
    invoke-virtual {p0}, Lyi/widget/WeightedLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 46
    .local v0, height:I
    const/4 v2, 0x0

    .line 48
    .local v2, measure:Z
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 49
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 51
    if-eqz v1, :cond_3

    iget v7, p0, Lyi/widget/WeightedLinearLayout;->mMinorWeight:F

    .line 52
    .local v7, widthWeight:F
    :goto_1
    const/high16 v8, -0x8000

    if-ne v6, v8, :cond_0

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    .line 53
    int-to-float v8, v5

    int-to-float v9, v4

    mul-float/2addr v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 54
    int-to-float v8, v4

    mul-float/2addr v8, v7

    float-to-int v8, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 55
    const/4 v2, 0x1

    .line 61
    :cond_0
    if-eqz v2, :cond_1

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 64
    :cond_1
    return-void

    .line 38
    .end local v0           #height:I
    .end local v1           #isPortrait:Z
    .end local v2           #measure:Z
    .end local v5           #width:I
    .end local v6           #widthMode:I
    .end local v7           #widthWeight:F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    .restart local v0       #height:I
    .restart local v1       #isPortrait:Z
    .restart local v2       #measure:Z
    .restart local v5       #width:I
    .restart local v6       #widthMode:I
    :cond_3
    iget v7, p0, Lyi/widget/WeightedLinearLayout;->mMajorWeight:F

    goto :goto_1
.end method
