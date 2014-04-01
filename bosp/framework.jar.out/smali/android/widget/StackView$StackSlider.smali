.class Landroid/widget/StackView$StackSlider;
.super Ljava/lang/Object;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StackSlider"
.end annotation


# static fields
.field static final BEGINNING_OF_STACK_MODE:I = 0x1

.field static final END_OF_STACK_MODE:I = 0x2

.field static final NORMAL_MODE:I


# instance fields
.field mMode:I

.field mView:Landroid/view/View;

.field mXProgress:F

.field mYProgress:F

.field final synthetic this$0:Landroid/widget/StackView;


# direct methods
.method public constructor <init>(Landroid/widget/StackView;)V
    .locals 1
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 935
    return-void
.end method

.method public constructor <init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V
    .locals 1
    .parameter
    .parameter "copy"

    .prologue
    .line 937
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 938
    iget-object v0, p2, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 939
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mYProgress:F

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 940
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mXProgress:F

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 941
    iget v0, p2, Landroid/widget/StackView$StackSlider;->mMode:I

    iput v0, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 942
    return-void
.end method

.method private cubic(F)F
    .locals 5
    .parameter "r"

    .prologue
    const/high16 v4, 0x4000

    .line 945
    mul-float v0, v4, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-float v0, v0

    div-float/2addr v0, v4

    return v0
.end method

.method private getDuration(ZF)F
    .locals 12
    .parameter "invert"
    .parameter "velocity"

    .prologue
    const/high16 v11, 0x43c8

    const/4 v4, 0x0

    const-wide/high16 v9, 0x4000

    .line 1077
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 1078
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .line 1080
    .local v3, viewLp:Landroid/widget/StackView$LayoutParams;
    iget v5, v3, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    int-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v7, v3, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    int-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 1082
    .local v0, d:F
    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v5}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const v7, 0x3ecccccd

    iget-object v8, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v8}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 1085
    .local v2, maxd:F
    cmpl-float v5, p2, v4

    if-nez v5, :cond_2

    .line 1086
    if-eqz p1, :cond_1

    const/high16 v4, 0x3f80

    div-float v5, v0, v2

    sub-float/2addr v4, v5

    :goto_0
    mul-float v1, v4, v11

    .line 1098
    .end local v0           #d:F
    .end local v2           #maxd:F
    .end local v3           #viewLp:Landroid/widget/StackView$LayoutParams;
    :cond_0
    :goto_1
    return v1

    .line 1086
    .restart local v0       #d:F
    .restart local v2       #maxd:F
    .restart local v3       #viewLp:Landroid/widget/StackView$LayoutParams;
    :cond_1
    div-float v4, v0, v2

    goto :goto_0

    .line 1088
    :cond_2
    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v1, v0, v5

    .line 1090
    .local v1, duration:F
    :goto_2
    const/high16 v5, 0x4248

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_3

    cmpl-float v5, v1, v11

    if-lez v5, :cond_0

    .line 1092
    :cond_3
    invoke-direct {p0, p1, v4}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v1

    goto :goto_1

    .line 1088
    .end local v1           #duration:F
    :cond_4
    sub-float v5, v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v1, v5, v6

    goto :goto_2

    .end local v0           #d:F
    .end local v2           #maxd:F
    .end local v3           #viewLp:Landroid/widget/StackView$LayoutParams;
    :cond_5
    move v1, v4

    .line 1098
    goto :goto_1
.end method

.method private highlightAlphaInterpolator(F)F
    .locals 5
    .parameter "r"

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3f59999a

    .line 949
    const v0, 0x3ecccccd

    .line 950
    .local v0, pivot:F
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 951
    div-float v1, p1, v0

    invoke-direct {p0, v1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v1, v3

    .line 953
    :goto_0
    return v1

    :cond_0
    sub-float v1, p1, v0

    sub-float v2, v4, v0

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    invoke-direct {p0, v1}, Landroid/widget/StackView$StackSlider;->cubic(F)F

    move-result v1

    mul-float/2addr v1, v3

    goto :goto_0
.end method

.method private rotationInterpolator(F)F
    .locals 3
    .parameter "r"

    .prologue
    .line 967
    const v0, 0x3e4ccccd

    .line 968
    .local v0, pivot:F
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 969
    const/4 v1, 0x0

    .line 971
    :goto_0
    return v1

    :cond_0
    sub-float v1, p1, v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private viewAlphaInterpolator(F)F
    .locals 3
    .parameter "r"

    .prologue
    .line 958
    const v0, 0x3e99999a

    .line 959
    .local v0, pivot:F
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 960
    sub-float v1, p1, v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 962
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDurationForNeutralPosition()F
    .locals 2

    .prologue
    .line 1061
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForNeutralPosition(F)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 1069
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition()F
    .locals 2

    .prologue
    .line 1065
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method getDurationForOffscreenPosition(F)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 1073
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/StackView$StackSlider;->getDuration(ZF)F

    move-result v0

    return v0
.end method

.method public getXProgress()F
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    return v0
.end method

.method public getYProgress()F
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    return v0
.end method

.method setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1057
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    .line 1058
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 976
    iput-object p1, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    .line 977
    return-void
.end method

.method public setXProgress(F)V
    .locals 3
    .parameter "r"

    .prologue
    .line 1042
    const/high16 v2, 0x4000

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1043
    const/high16 v2, -0x4000

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1045
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mXProgress:F

    .line 1047
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1049
    .local v1, viewLp:Landroid/widget/StackView$LayoutParams;
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 1051
    .local v0, highlightLp:Landroid/widget/StackView$LayoutParams;
    const v2, 0x3e4ccccd

    mul-float/2addr p1, v2

    .line 1052
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v2}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1053
    iget-object v2, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v2}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setYProgress(F)V
    .locals 12
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x42b4

    const v9, 0x3e4ccccd

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 981
    invoke-static {v8, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 982
    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 984
    iput p1, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    .line 985
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/StackView$LayoutParams;

    .line 988
    .local v3, viewLp:Landroid/widget/StackView$LayoutParams;
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 990
    .local v1, highlightLp:Landroid/widget/StackView$LayoutParams;
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mStackMode:I
    invoke-static {v4}, Landroid/widget/StackView;->access$100(Landroid/widget/StackView;)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 994
    .local v2, stackDirection:I
    :goto_1
    iget v4, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/widget/StackView$StackSlider;->mYProgress:F

    invoke-static {v8, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_4

    .line 995
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-nez v4, :cond_1

    .line 996
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1004
    :cond_1
    :goto_2
    iget v4, p0, Landroid/widget/StackView$StackSlider;->mMode:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1006
    :pswitch_0
    neg-float v4, p1

    int-to-float v5, v2

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v5}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1007
    neg-float v4, p1

    int-to-float v5, v2

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v5}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1008
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1010
    sub-float v4, v8, p1

    invoke-direct {p0, v4}, Landroid/widget/StackView$StackSlider;->viewAlphaInterpolator(F)F

    move-result v0

    .line 1014
    .local v0, alpha:F
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v7

    if-nez v4, :cond_5

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1015
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    :cond_2
    :goto_3
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1022
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    int-to-float v5, v2

    mul-float/2addr v5, v10

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationX(F)V

    .line 1023
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    int-to-float v5, v2

    mul-float/2addr v5, v10

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->rotationInterpolator(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotationX(F)V

    goto/16 :goto_0

    .line 990
    .end local v0           #alpha:F
    .end local v2           #stackDirection:I
    :cond_3
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 999
    .restart local v2       #stackDirection:I
    :cond_4
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1000
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1016
    .restart local v0       #alpha:F
    :cond_5
    cmpl-float v4, v0, v7

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1018
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->mView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1026
    .end local v0           #alpha:F
    :pswitch_1
    mul-float/2addr p1, v9

    .line 1027
    neg-int v4, v2

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v5}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1028
    neg-int v4, v2

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v5}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1029
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1032
    :pswitch_2
    sub-float v4, v8, p1

    mul-float p1, v4, v9

    .line 1033
    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v5}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1034
    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget-object v5, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mSlideAmount:I
    invoke-static {v5}, Landroid/widget/StackView;->access$200(Landroid/widget/StackView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1035
    iget-object v4, p0, Landroid/widget/StackView$StackSlider;->this$0:Landroid/widget/StackView;

    #getter for: Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/widget/StackView;->access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, p1}, Landroid/widget/StackView$StackSlider;->highlightAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
