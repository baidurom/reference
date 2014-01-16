.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 149
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 944
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 969
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 151
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 152
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 153
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 155
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 68
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 90
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 80
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 104
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 944
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 969
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 119
    if-eqz p11, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 122
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 123
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 124
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 125
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 127
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 133
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 134
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 136
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 138
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 140
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 144
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 146
    return-void

    .line 104
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 130
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 48
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 59
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 61
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 717
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    if-nez p10, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 814
    :goto_0
    return-void

    .line 724
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    sget-object v17, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 727
    .local v6, ellipsisWidth:F
    const/4 v5, 0x0

    .line 728
    .local v5, ellipsisStart:I
    const/4 v4, 0x0

    .line 729
    .local v4, ellipsisCount:I
    sub-int v10, p2, p1

    .line 732
    .local v10, len:I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 734
    const/4 v15, 0x0

    .line 737
    .local v15, sum:F
    move v7, v10

    .local v7, i:I
    :goto_2
    if-ltz v7, :cond_1

    .line 738
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 740
    .local v16, w:F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_4

    .line 747
    .end local v16           #w:F
    :cond_1
    const/4 v5, 0x0

    .line 748
    move v4, v7

    .line 812
    .end local v7           #i:I
    .end local v15           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    aput v5, v17, v18

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v4, v17, v18

    goto :goto_0

    .line 724
    .end local v4           #ellipsisCount:I
    .end local v5           #ellipsisStart:I
    .end local v6           #ellipsisWidth:F
    .end local v10           #len:I
    :cond_3
    sget-object v17, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 744
    .restart local v4       #ellipsisCount:I
    .restart local v5       #ellipsisStart:I
    .restart local v6       #ellipsisWidth:F
    .restart local v7       #i:I
    .restart local v10       #len:I
    .restart local v15       #sum:F
    .restart local v16       #w:F
    :cond_4
    add-float v15, v15, v16

    .line 737
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 750
    .end local v7           #i:I
    .end local v15           #sum:F
    .end local v16           #w:F
    :cond_5
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 751
    const-string v17, "StaticLayout"

    const-string v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 754
    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 756
    :cond_7
    const/4 v15, 0x0

    .line 759
    .restart local v15       #sum:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v10, :cond_8

    .line 760
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 762
    .restart local v16       #w:F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_9

    .line 769
    .end local v16           #w:F
    :cond_8
    move v5, v7

    .line 770
    sub-int v4, v10, v7

    .line 771
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 772
    add-int/lit8 v5, v10, -0x1

    .line 773
    const/4 v4, 0x1

    goto :goto_3

    .line 766
    .restart local v16       #w:F
    :cond_9
    add-float v15, v15, v16

    .line 759
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 777
    .end local v7           #i:I
    .end local v15           #sum:F
    .end local v16           #w:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 778
    const/4 v11, 0x0

    .local v11, lsum:F
    const/4 v14, 0x0

    .line 779
    .local v14, rsum:F
    const/4 v9, 0x0

    .local v9, left:I
    move v13, v10

    .line 781
    .local v13, right:I
    sub-float v17, p5, v6

    const/high16 v18, 0x4000

    div-float v12, v17, v18

    .line 782
    .local v12, ravail:F
    move v13, v10

    :goto_5
    if-ltz v13, :cond_b

    .line 783
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 785
    .restart local v16       #w:F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_d

    .line 792
    .end local v16           #w:F
    :cond_b
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 793
    .local v8, lavail:F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_c

    .line 794
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 796
    .restart local v16       #w:F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_e

    .line 803
    .end local v16           #w:F
    :cond_c
    move v5, v9

    .line 804
    sub-int v4, v13, v9

    .line 805
    goto/16 :goto_3

    .line 789
    .end local v8           #lavail:F
    .restart local v16       #w:F
    :cond_d
    add-float v14, v14, v16

    .line 782
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 800
    .restart local v8       #lavail:F
    :cond_e
    add-float v11, v11, v16

    .line 793
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 806
    .end local v8           #lavail:F
    .end local v9           #left:I
    .end local v11           #lsum:F
    .end local v12           #ravail:F
    .end local v13           #right:I
    .end local v14           #rsum:F
    .end local v16           #w:F
    :cond_f
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 807
    const-string v17, "StaticLayout"

    const-string v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 503
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 509
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 510
    if-nez p1, :cond_0

    .line 511
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 528
    goto :goto_0

    .line 533
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 534
    if-nez p1, :cond_0

    .line 535
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 553
    goto :goto_0

    .line 558
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 561
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 564
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 567
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 570
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 573
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 576
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 580
    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 535
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 595
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 596
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 597
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 599
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 600
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 601
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 602
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 604
    move-object/from16 v24, v19

    .line 606
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 607
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 612
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 613
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 614
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 615
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 616
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 618
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 619
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 620
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 618
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 624
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 628
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 629
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 630
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 631
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 634
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 635
    if-eqz p21, :cond_4

    .line 636
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 639
    :cond_4
    if-eqz p20, :cond_5

    .line 640
    move/from16 p4, p6

    .line 643
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 644
    if-eqz p21, :cond_6

    .line 645
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 648
    :cond_6
    if-eqz p20, :cond_7

    .line 649
    move/from16 p5, p7

    .line 655
    :cond_7
    if-eqz p15, :cond_10

    .line 656
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 657
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_f

    .line 658
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 666
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 667
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 668
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 670
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 671
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 672
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 674
    if-eqz p14, :cond_8

    .line 675
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 677
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 678
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 682
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 689
    :goto_3
    if-eqz p25, :cond_e

    .line 692
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 693
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 694
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 696
    .local v12, forceEllipsis:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    .line 701
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 702
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 708
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 709
    return p8

    .line 660
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_f
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 663
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_10
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 685
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    .line 692
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 693
    .restart local v18       #firstLine:Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    .line 694
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    .line 696
    .restart local v12       #forceEllipsis:Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 925
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 131
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 164
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 166
    const/4 v13, 0x0

    .line 167
    .local v13, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 169
    .local v20, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 170
    .local v18, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 172
    .local v17, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v112, v0

    .line 174
    .local v112, measured:Landroid/text/MeasuredText;
    const/16 v125, 0x0

    .line 175
    .local v125, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v125, p1

    .line 176
    check-cast v125, Landroid/text/Spanned;

    .line 178
    :cond_1
    const/16 v80, 0x1

    .line 181
    .local v80, DEFAULT_DIR:I
    move/from16 v29, p2

    .local v29, paraStart:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_2c

    .line 182
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 183
    .local v38, paraEnd:I
    if-gez v38, :cond_4

    .line 184
    move/from16 v38, p3

    .line 188
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v97, v5, 0x1

    .line 189
    .local v97, firstWidthLineLimit:I
    move/from16 v96, p5

    .line 190
    .local v96, firstWidth:I
    move/from16 v120, p5

    .line 192
    .local v120, restWidth:I
    const/16 v16, 0x0

    .line 194
    .local v16, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v125, :cond_9

    .line 195
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v125

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v121

    check-cast v121, [Landroid/text/style/LeadingMarginSpan;

    .line 197
    .local v121, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v105, 0x0

    .local v105, i:I
    :goto_3
    move-object/from16 v0, v121

    array-length v5, v0

    move/from16 v0, v105

    if-ge v0, v5, :cond_5

    .line 198
    aget-object v109, v121, v105

    .line 199
    .local v109, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v121, v105

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v96, v96, v5

    .line 200
    aget-object v5, v121, v105

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v120, v120, v5

    .line 206
    move-object/from16 v0, v109

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v110, v109

    .line 207
    check-cast v110, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 208
    .local v110, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v125

    move-object/from16 v1, v110

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v111

    .line 209
    .local v111, lmsFirstLine:I
    invoke-interface/range {v110 .. v110}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v97, v111, v5

    .line 197
    .end local v110           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v111           #lmsFirstLine:I
    :cond_2
    add-int/lit8 v105, v105, 0x1

    goto :goto_3

    .line 167
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v17           #chooseHtv:[I
    .end local v18           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v20           #needMultiply:Z
    .end local v29           #paraStart:I
    .end local v38           #paraEnd:I
    .end local v80           #DEFAULT_DIR:I
    .end local v96           #firstWidth:I
    .end local v97           #firstWidthLineLimit:I
    .end local v105           #i:I
    .end local v109           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v112           #measured:Landroid/text/MeasuredText;
    .end local v120           #restWidth:I
    .end local v121           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v125           #spanned:Landroid/text/Spanned;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 186
    .restart local v17       #chooseHtv:[I
    .restart local v18       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20       #needMultiply:Z
    .restart local v29       #paraStart:I
    .restart local v38       #paraEnd:I
    .restart local v80       #DEFAULT_DIR:I
    .restart local v112       #measured:Landroid/text/MeasuredText;
    .restart local v125       #spanned:Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 213
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v96       #firstWidth:I
    .restart local v97       #firstWidthLineLimit:I
    .restart local v105       #i:I
    .restart local v120       #restWidth:I
    .restart local v121       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v125

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 215
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 216
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 218
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 222
    :cond_7
    const/16 v105, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v105

    if-ge v0, v5, :cond_9

    .line 223
    aget-object v5, v16, v105

    move-object/from16 v0, v125

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v113

    .line 225
    .local v113, o:I
    move/from16 v0, v113

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v105

    .line 222
    :goto_5
    add-int/lit8 v105, v105, 0x1

    goto :goto_4

    .line 233
    :cond_8
    aput v13, v17, v105

    goto :goto_5

    .line 239
    .end local v105           #i:I
    .end local v113           #o:I
    .end local v121           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v112

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 240
    move-object/from16 v0, v112

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 241
    .local v27, chs:[C
    move-object/from16 v0, v112

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 242
    .local v28, widths:[F
    move-object/from16 v0, v112

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 243
    .local v21, chdirs:[B
    move-object/from16 v0, v112

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 244
    .local v22, dir:I
    move-object/from16 v0, v112

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 246
    .local v23, easy:Z
    move/from16 v130, v96

    .line 248
    .local v130, width:I
    const/16 v62, 0x0

    .line 250
    .local v62, w:F
    move/from16 v7, v29

    .line 254
    .local v7, here:I
    move/from16 v114, v29

    .line 255
    .local v114, ok:I
    move/from16 v119, v62

    .line 256
    .local v119, okWidth:F
    const/16 v115, 0x0

    .local v115, okAscent:I
    const/16 v117, 0x0

    .local v117, okDescent:I
    const/16 v118, 0x0

    .local v118, okTop:I
    const/16 v116, 0x0

    .line 260
    .local v116, okBottom:I
    move/from16 v98, v29

    .line 261
    .local v98, fit:I
    move/from16 v99, v62

    .line 262
    .local v99, fitWidth:F
    const/16 v39, 0x0

    .local v39, fitAscent:I
    const/16 v40, 0x0

    .local v40, fitDescent:I
    const/16 v41, 0x0

    .local v41, fitTop:I
    const/16 v42, 0x0

    .line 264
    .local v42, fitBottom:I
    const/16 v19, 0x0

    .line 265
    .local v19, hasTabOrEmoji:Z
    const/16 v104, 0x0

    .line 266
    .local v104, hasTab:Z
    const/16 v127, 0x0

    .line 268
    .local v127, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v124, v29

    .local v124, spanStart:I
    :goto_6
    move/from16 v0, v124

    move/from16 v1, v38

    if-ge v0, v1, :cond_29

    .line 270
    if-nez v125, :cond_17

    .line 271
    move/from16 v122, v38

    .line 272
    .local v122, spanEnd:I
    sub-int v123, v122, v124

    .line 273
    .local v123, spanLen:I
    move-object/from16 v0, v112

    move-object/from16 v1, p4

    move/from16 v2, v123

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 284
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v103, v0

    .line 285
    .local v103, fmTop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v101, v0

    .line 286
    .local v101, fmBottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v100, v0

    .line 287
    .local v100, fmAscent:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v102, v0

    .line 289
    .local v102, fmDescent:I
    move/from16 v108, v124

    .local v108, j:I
    :goto_8
    move/from16 v0, v108

    move/from16 v1, v122

    if-ge v0, v1, :cond_24

    .line 290
    sub-int v5, v108, v29

    aget-char v94, v27, v5

    .line 292
    .local v94, c:C
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_18

    .line 343
    :goto_9
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_a

    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_20

    :cond_a
    const/16 v107, 0x1

    .line 345
    .local v107, isSpaceOrTab:Z
    :goto_a
    move/from16 v0, v130

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_b

    if-eqz v107, :cond_22

    .line 346
    :cond_b
    move/from16 v99, v62

    .line 347
    add-int/lit8 v98, v108, 0x1

    .line 349
    move/from16 v0, v103

    move/from16 v1, v41

    if-ge v0, v1, :cond_c

    .line 350
    move/from16 v41, v103

    .line 351
    :cond_c
    move/from16 v0, v100

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    .line 352
    move/from16 v39, v100

    .line 353
    :cond_d
    move/from16 v0, v102

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    .line 354
    move/from16 v40, v102

    .line 355
    :cond_e
    move/from16 v0, v101

    move/from16 v1, v42

    if-le v0, v1, :cond_f

    .line 356
    move/from16 v42, v101

    .line 359
    :cond_f
    if-nez v107, :cond_12

    const/16 v5, 0x2f

    move/from16 v0, v94

    if-eq v0, v5, :cond_10

    const/16 v5, 0x2d

    move/from16 v0, v94

    if-ne v0, v5, :cond_11

    :cond_10
    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_12

    add-int/lit8 v5, v108, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    const/16 v5, 0x2e80

    move/from16 v0, v94

    if-lt v0, v5, :cond_21

    const/4 v5, 0x1

    move/from16 v0, v94

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_21

    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_21

    add-int/lit8 v5, v108, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_12
    const/16 v106, 0x1

    .line 368
    .local v106, isLineBreak:Z
    :goto_b
    if-eqz v106, :cond_16

    .line 369
    move/from16 v119, v62

    .line 370
    add-int/lit8 v114, v108, 0x1

    .line 372
    move/from16 v0, v41

    move/from16 v1, v118

    if-ge v0, v1, :cond_13

    .line 373
    move/from16 v118, v41

    .line 374
    :cond_13
    move/from16 v0, v39

    move/from16 v1, v115

    if-ge v0, v1, :cond_14

    .line 375
    move/from16 v115, v39

    .line 376
    :cond_14
    move/from16 v0, v40

    move/from16 v1, v117

    if-le v0, v1, :cond_15

    .line 377
    move/from16 v117, v40

    .line 378
    :cond_15
    move/from16 v0, v42

    move/from16 v1, v116

    if-le v0, v1, :cond_16

    .line 379
    move/from16 v116, v42

    .line 289
    .end local v106           #isLineBreak:Z
    :cond_16
    add-int/lit8 v108, v108, 0x1

    goto/16 :goto_8

    .line 275
    .end local v94           #c:C
    .end local v100           #fmAscent:I
    .end local v101           #fmBottom:I
    .end local v102           #fmDescent:I
    .end local v103           #fmTop:I
    .end local v107           #isSpaceOrTab:Z
    .end local v108           #j:I
    .end local v122           #spanEnd:I
    .end local v123           #spanLen:I
    :cond_17
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v125

    move/from16 v1, v124

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v122

    .line 277
    .restart local v122       #spanEnd:I
    sub-int v123, v122, v124

    .line 278
    .restart local v123       #spanLen:I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v125

    move/from16 v1, v124

    move/from16 v2, v122

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    check-cast v126, [Landroid/text/style/MetricAffectingSpan;

    .line 280
    .local v126, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    move-object/from16 v1, v125

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    .end local v126           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v126, [Landroid/text/style/MetricAffectingSpan;

    .line 281
    .restart local v126       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v112

    move-object/from16 v1, p4

    move-object/from16 v2, v126

    move/from16 v3, v123

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 294
    .end local v126           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v94       #c:C
    .restart local v100       #fmAscent:I
    .restart local v101       #fmBottom:I
    .restart local v102       #fmDescent:I
    .restart local v103       #fmTop:I
    .restart local v108       #j:I
    :cond_18
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_1b

    .line 295
    if-nez v104, :cond_19

    .line 296
    const/16 v104, 0x1

    .line 297
    const/16 v19, 0x1

    .line 298
    if-eqz v125, :cond_19

    .line 300
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v125

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v126

    check-cast v126, [Landroid/text/style/TabStopSpan;

    .line 302
    .local v126, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v126

    array-length v5, v0

    if-lez v5, :cond_19

    .line 303
    new-instance v127, Landroid/text/Layout$TabStops;

    .end local v127           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v127

    move-object/from16 v1, v126

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 307
    .end local v126           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v127       #tabStops:Landroid/text/Layout$TabStops;
    :cond_19
    if-eqz v127, :cond_1a

    .line 308
    move-object/from16 v0, v127

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_9

    .line 310
    :cond_1a
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_9

    .line 312
    :cond_1b
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_1f

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_1f

    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_1f

    .line 314
    sub-int v5, v108, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v95

    .line 316
    .local v95, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v95

    if-lt v0, v5, :cond_1e

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v95

    if-gt v0, v5, :cond_1e

    .line 317
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v93

    .line 319
    .local v93, bm:Landroid/graphics/Bitmap;
    if-eqz v93, :cond_1d

    .line 322
    if-nez v125, :cond_1c

    .line 323
    move-object/from16 v128, p4

    .line 328
    .local v128, whichPaint:Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v128 .. v128}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v129, v5, v6

    .line 330
    .local v129, wid:F
    add-float v62, v62, v129

    .line 331
    const/16 v19, 0x1

    .line 332
    add-int/lit8 v108, v108, 0x1

    .line 333
    goto/16 :goto_9

    .line 325
    .end local v128           #whichPaint:Landroid/graphics/Paint;
    .end local v129           #wid:F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v128, v0

    .restart local v128       #whichPaint:Landroid/graphics/Paint;
    goto :goto_c

    .line 334
    .end local v128           #whichPaint:Landroid/graphics/Paint;
    :cond_1d
    sub-int v5, v108, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 337
    .end local v93           #bm:Landroid/graphics/Bitmap;
    :cond_1e
    sub-int v5, v108, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 340
    .end local v95           #emoji:I
    :cond_1f
    sub-int v5, v108, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 343
    :cond_20
    const/16 v107, 0x0

    goto/16 :goto_a

    .line 359
    .restart local v107       #isSpaceOrTab:Z
    :cond_21
    const/16 v106, 0x0

    goto/16 :goto_b

    .line 382
    :cond_22
    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v122

    if-ge v5, v0, :cond_25

    const/16 v34, 0x1

    .line 387
    .local v34, moreChars:Z
    :goto_d
    move/from16 v0, v114

    if-eq v0, v7, :cond_26

    .line 388
    move/from16 v8, v114

    .line 389
    .local v8, endPos:I
    move/from16 v9, v115

    .line 390
    .local v9, above:I
    move/from16 v10, v117

    .line 391
    .local v10, below:I
    move/from16 v11, v118

    .line 392
    .local v11, top:I
    move/from16 v12, v116

    .line 393
    .local v12, bottom:I
    move/from16 v32, v119

    .local v32, currentTextWidth:F
    :goto_e
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 410
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 417
    move v7, v8

    .line 418
    add-int/lit8 v108, v7, -0x1

    .line 419
    move/from16 v98, v7

    move/from16 v114, v7

    .line 420
    const/16 v62, 0x0

    .line 421
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 422
    const/16 v116, 0x0

    move/from16 v118, v116

    move/from16 v117, v116

    move/from16 v115, v116

    .line 424
    add-int/lit8 v97, v97, -0x1

    if-gtz v97, :cond_23

    .line 425
    move/from16 v130, v120

    .line 428
    :cond_23
    move/from16 v0, v124

    if-ge v7, v0, :cond_28

    .line 431
    move-object/from16 v0, v112

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 432
    move/from16 v122, v7

    .line 268
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    .end local v94           #c:C
    .end local v107           #isSpaceOrTab:Z
    :cond_24
    :goto_f
    move/from16 v124, v122

    goto/16 :goto_6

    .line 382
    .restart local v94       #c:C
    .restart local v107       #isSpaceOrTab:Z
    :cond_25
    const/16 v34, 0x0

    goto :goto_d

    .line 394
    .restart local v34       #moreChars:Z
    :cond_26
    move/from16 v0, v98

    if-eq v0, v7, :cond_27

    .line 395
    move/from16 v8, v98

    .line 396
    .restart local v8       #endPos:I
    move/from16 v9, v39

    .line 397
    .restart local v9       #above:I
    move/from16 v10, v40

    .line 398
    .restart local v10       #below:I
    move/from16 v11, v41

    .line 399
    .restart local v11       #top:I
    move/from16 v12, v42

    .line 400
    .restart local v12       #bottom:I
    move/from16 v32, v99

    .restart local v32       #currentTextWidth:F
    goto :goto_e

    .line 402
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_27
    add-int/lit8 v8, v7, 0x1

    .line 403
    .restart local v8       #endPos:I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 404
    .restart local v9       #above:I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 405
    .restart local v10       #below:I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 406
    .restart local v11       #top:I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 407
    .restart local v12       #bottom:I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32       #currentTextWidth:F
    goto :goto_e

    .line 436
    :cond_28
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_16

    goto :goto_f

    .line 443
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    .end local v94           #c:C
    .end local v100           #fmAscent:I
    .end local v101           #fmBottom:I
    .end local v102           #fmDescent:I
    .end local v103           #fmTop:I
    .end local v107           #isSpaceOrTab:Z
    .end local v108           #j:I
    .end local v122           #spanEnd:I
    .end local v123           #spanLen:I
    :cond_29
    move/from16 v0, v38

    if-eq v0, v7, :cond_2b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_2b

    .line 444
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_2a

    .line 445
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 447
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 448
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 449
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 450
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 455
    :cond_2a
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_2f

    const/16 v64, 0x1

    :goto_10
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 467
    :cond_2b
    move/from16 v29, v38

    .line 469
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_30

    .line 473
    .end local v7           #here:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v21           #chdirs:[B
    .end local v22           #dir:I
    .end local v23           #easy:Z
    .end local v27           #chs:[C
    .end local v28           #widths:[F
    .end local v38           #paraEnd:I
    .end local v39           #fitAscent:I
    .end local v40           #fitDescent:I
    .end local v41           #fitTop:I
    .end local v42           #fitBottom:I
    .end local v62           #w:F
    .end local v96           #firstWidth:I
    .end local v97           #firstWidthLineLimit:I
    .end local v98           #fit:I
    .end local v99           #fitWidth:F
    .end local v104           #hasTab:Z
    .end local v114           #ok:I
    .end local v115           #okAscent:I
    .end local v116           #okBottom:I
    .end local v117           #okDescent:I
    .end local v118           #okTop:I
    .end local v119           #okWidth:F
    .end local v120           #restWidth:I
    .end local v124           #spanStart:I
    .end local v127           #tabStops:Landroid/text/Layout$TabStops;
    .end local v130           #width:I
    :cond_2c
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_2d

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2e

    :cond_2d
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_2e

    .line 477
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 479
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 490
    :cond_2e
    return-void

    .line 455
    .restart local v7       #here:I
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v19       #hasTabOrEmoji:Z
    .restart local v21       #chdirs:[B
    .restart local v22       #dir:I
    .restart local v23       #easy:Z
    .restart local v27       #chs:[C
    .restart local v28       #widths:[F
    .restart local v38       #paraEnd:I
    .restart local v39       #fitAscent:I
    .restart local v40       #fitDescent:I
    .restart local v41       #fitTop:I
    .restart local v42       #fitBottom:I
    .restart local v62       #w:F
    .restart local v96       #firstWidth:I
    .restart local v97       #firstWidthLineLimit:I
    .restart local v98       #fit:I
    .restart local v99       #fitWidth:F
    .restart local v104       #hasTab:Z
    .restart local v114       #ok:I
    .restart local v115       #okAscent:I
    .restart local v116       #okBottom:I
    .restart local v117       #okDescent:I
    .restart local v118       #okTop:I
    .restart local v119       #okWidth:F
    .restart local v120       #restWidth:I
    .restart local v124       #spanStart:I
    .restart local v127       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v130       #width:I
    :cond_2f
    const/16 v64, 0x0

    goto/16 :goto_10

    .line 181
    :cond_30
    move/from16 v29, v38

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 898
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 899
    const/4 v0, 0x0

    .line 902
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 907
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 908
    const/4 v0, 0x0

    .line 911
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 878
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 858
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 859
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 861
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 883
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 822
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 823
    .local v1, high:I
    const/4 v3, -0x1

    .line 825
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 826
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 827
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 828
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 829
    move v1, v0

    goto :goto_0

    .line 831
    :cond_0
    move v3, v0

    goto :goto_0

    .line 834
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 835
    const/4 v3, 0x0

    .line 837
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 868
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 848
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 849
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 851
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 873
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 920
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 921
    return-void
.end method
