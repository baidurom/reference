.class Landroid/widget/Editor$CorrectionHighlighter;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorrectionHighlighter"
.end annotation


# static fields
.field private static final FADE_OUT_DURATION:I = 0x190


# instance fields
.field private mEnd:I

.field private mFadingStartTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mStart:I

.field private mTempRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .parameter

    .prologue
    .line 3632
    iput-object p1, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3625
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    .line 3626
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    .line 3633
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 3635
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3636
    return-void
.end method

.method static synthetic access$300(Landroid/widget/Editor$CorrectionHighlighter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3624
    invoke-direct {p0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    return-void
.end method

.method private invalidate(Z)V
    .locals 7
    .parameter "delayed"

    .prologue
    .line 3693
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3709
    :goto_0
    return-void

    .line 3695
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    .line 3696
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3698
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 3699
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 3701
    .local v1, top:I
    if-eqz p1, :cond_2

    .line 3702
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidateOnAnimation(IIII)V

    goto :goto_0

    .line 3706
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidate(IIII)V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 3712
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 3713
    return-void
.end method

.method private updatePaint()Z
    .locals 9

    .prologue
    .line 3667
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    sub-long v2, v5, v7

    .line 3668
    .local v2, duration:J
    const-wide/16 v5, 0x190

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 3675
    :goto_0
    return v5

    .line 3670
    :cond_0
    const/high16 v5, 0x3f80

    long-to-float v6, v2

    const/high16 v7, 0x43c8

    div-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 3671
    .local v0, coef:F
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    iget v5, v5, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 3672
    .local v4, highlightColorAlpha:I
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    iget v5, v5, Landroid/widget/TextView;->mHighlightColor:I

    const v6, 0xffffff

    and-int/2addr v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v0

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    add-int v1, v5, v6

    .line 3674
    .local v1, color:I
    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3675
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private updatePath()Z
    .locals 5

    .prologue
    .line 3679
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 3680
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 3689
    :goto_0
    return v4

    .line 3683
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 3684
    .local v2, length:I
    iget v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3685
    .local v3, start:I
    iget v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3687
    .local v0, end:I
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 3688
    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v0, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 3689
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 3
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v2, 0x0

    .line 3649
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePath()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePaint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3650
    if-eqz p2, :cond_0

    .line 3651
    int-to-float v0, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3654
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3656
    if-eqz p2, :cond_1

    .line 3657
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3659
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    .line 3664
    :goto_0
    return-void

    .line 3661
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    .line 3662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    goto :goto_0
.end method

.method public highlight(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 3639
    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    .line 3640
    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    .line 3641
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    .line 3643
    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    if-gez v0, :cond_1

    .line 3644
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    .line 3646
    :cond_1
    return-void
.end method
