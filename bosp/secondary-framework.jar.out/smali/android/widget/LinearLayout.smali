.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout.log"

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "Layout"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LayoutDebug"

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "debug.layout.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 119
    const v0, 0x800033

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 105
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 113
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 119
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 189
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 193
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 198
    if-ltz v2, :cond_1

    .line 199
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 202
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 203
    .local v1, baselineAligned:Z
    if-nez v1, :cond_2

    .line 204
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 207
    :cond_2
    const/4 v3, 0x4

    const/high16 v4, -0x4080

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 209
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 212
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 214
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 216
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 218
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .parameter "count"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 1550
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1552
    .local v4, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1553
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1554
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1555
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1557
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1560
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1561
    .local v8, oldWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1564
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1565
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1552
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldWidth:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1569
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .parameter "count"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 1037
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1039
    .local v2, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1040
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1041
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 1042
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1044
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1047
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1048
    .local v8, oldHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 1051
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1052
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1039
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldHeight:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1056
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getCurrentLevel()I
    .locals 4

    .prologue
    .line 2084
    const/4 v0, 0x0

    .line 2085
    .local v0, level:I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2086
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2087
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .line 2088
    check-cast v2, Landroid/view/View;

    .line 2089
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2090
    goto :goto_0

    .line 2091
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return v0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1869
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1870
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1971
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 359
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v3

    .line 360
    .local v3, isLayoutRtl:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 361
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 364
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 372
    .local v5, position:I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #position:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5       #position:I
    goto :goto_1

    .line 377
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #position:I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 378
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .restart local v0       #child:Landroid/view/View;
    if-nez v0, :cond_5

    .line 381
    if-eqz v3, :cond_4

    .line 382
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    .line 394
    .restart local v5       #position:I
    :goto_2
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 396
    .end local v0           #child:Landroid/view/View;
    .end local v5           #position:I
    :cond_3
    return-void

    .line 384
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5       #position:I
    goto :goto_2

    .line 387
    .end local v5           #position:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 388
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_6

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5       #position:I
    goto :goto_2

    .line 391
    .end local v5           #position:I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5       #position:I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 332
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 333
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 335
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 336
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 338
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v5, v6, v7

    .line 339
    .local v5, top:I
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 332
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #top:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    .end local v1           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 345
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 346
    .restart local v1       #child:Landroid/view/View;
    const/4 v0, 0x0

    .line 347
    .local v0, bottom:I
    if-nez v1, :cond_3

    .line 348
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 353
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 355
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    :cond_2
    return-void

    .line 350
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "top"

    .prologue
    .line 399
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 405
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1954
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1955
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1959
    :goto_0
    return-object v0

    .line 1956
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1957
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1959
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1941
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1964
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 467
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v6, :cond_1

    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 515
    :cond_0
    :goto_0
    return v5

    .line 471
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    iget v7, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_2

    .line 472
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 476
    :cond_2
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 479
    .local v1, childBaseline:I
    if-ne v1, v5, :cond_3

    .line 480
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_0

    .line 486
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 496
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 498
    .local v2, childTop:I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 499
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 500
    .local v4, majorGravity:I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 501
    sparse-switch v4, :sswitch_data_0

    .line 514
    .end local v4           #majorGravity:I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 515
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_0

    .line 503
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #majorGravity:I
    :sswitch_0
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 504
    goto :goto_1

    .line 507
    :sswitch_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_1

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1580
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1622
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1634
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1892
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5
    .parameter "childIndex"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 624
    if-nez p1, :cond_2

    .line 625
    iget v4, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 625
    goto :goto_0

    .line 626
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 627
    iget v4, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 628
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, hasVisibleViewBefore:Z
    add-int/lit8 v1, p1, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 631
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    .line 632
    const/4 v0, 0x1

    :cond_4
    move v2, v0

    .line 636
    goto :goto_0

    .line 630
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0           #hasVisibleViewBefore:Z
    .end local v1           #i:I
    :cond_6
    move v2, v3

    .line 638
    goto :goto_0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal()V
    .locals 30

    .prologue
    .line 1745
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v20

    .line 1746
    .local v20, isLayoutRtl:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v27, v0

    .line 1752
    .local v27, paddingTop:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTop:I

    sub-int v18, v2, v4

    .line 1753
    .local v18, height:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v18, v2

    .line 1756
    .local v10, childBottom:I
    sub-int v2, v18, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v13, v2, v4

    .line 1758
    .local v13, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1760
    .local v14, count:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1761
    .local v23, majorGravity:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1763
    .local v26, minorGravity:I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1765
    .local v8, baselineAligned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1766
    .local v24, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1768
    .local v25, maxDescent:[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v21

    .line 1769
    .local v21, layoutDirection:I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1782
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1786
    .local v12, childLeft:I
    :goto_0
    const/16 v28, 0x0

    .line 1787
    .local v28, start:I
    const/16 v16, 0x1

    .line 1789
    .local v16, dir:I
    if-eqz v20, :cond_0

    .line 1790
    add-int/lit8 v28, v14, -0x1

    .line 1791
    const/16 v16, -0x1

    .line 1794
    :cond_0
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 1795
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1796
    .local v11, childIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1798
    .local v3, child:Landroid/view/View;
    if-nez v3, :cond_2

    .line 1799
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1794
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1772
    .end local v3           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #childLeft:I
    .end local v16           #dir:I
    .end local v19           #i:I
    .end local v28           #start:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mLeft:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v12, v2, v4

    .line 1773
    .restart local v12       #childLeft:I
    goto :goto_0

    .line 1777
    .end local v12           #childLeft:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1778
    .restart local v12       #childLeft:I
    goto :goto_0

    .line 1800
    .restart local v3       #child:Landroid/view/View;
    .restart local v11       #childIndex:I
    .restart local v16       #dir:I
    .restart local v19       #i:I
    .restart local v28       #start:I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 1801
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1802
    .local v6, childWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1803
    .local v7, childHeight:I
    const/4 v9, -0x1

    .line 1805
    .local v9, childBaseline:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 1808
    .local v22, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 1809
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1812
    :cond_3
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 1813
    .local v17, gravity:I
    if-gez v17, :cond_4

    .line 1814
    move/from16 v17, v26

    .line 1817
    :cond_4
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1849
    move/from16 v5, v27

    .line 1853
    .local v5, childTop:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1854
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 1857
    :cond_6
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 1858
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1860
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1863
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_2

    .line 1819
    .end local v5           #childTop:I
    :sswitch_2
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 1820
    .restart local v5       #childTop:I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1821
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_3

    .line 1837
    .end local v5           #childTop:I
    :sswitch_3
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1839
    .restart local v5       #childTop:I
    goto :goto_3

    .line 1842
    .end local v5           #childTop:I
    :sswitch_4
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1843
    .restart local v5       #childTop:I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1844
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1845
    .local v15, descent:I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    .line 1846
    goto :goto_3

    .line 1866
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childTop:I
    .end local v6           #childWidth:I
    .end local v7           #childHeight:I
    .end local v9           #childBaseline:I
    .end local v11           #childIndex:I
    .end local v15           #descent:I
    .end local v17           #gravity:I
    .end local v22           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    .line 1769
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1817
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical()V
    .locals 21

    .prologue
    .line 1655
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1661
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mLeft:I

    sub-int v19, v1, v4

    .line 1662
    .local v19, width:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v8, v19, v1

    .line 1665
    .local v8, childRight:I
    sub-int v1, v19, v18

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v1, v4

    .line 1667
    .local v9, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1669
    .local v11, count:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1670
    .local v16, majorGravity:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1672
    .local v17, minorGravity:I
    sparse-switch v16, :sswitch_data_0

    .line 1685
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1689
    .local v10, childTop:I
    :goto_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 1690
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1691
    .local v2, child:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1692
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1689
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1675
    .end local v2           #child:Landroid/view/View;
    .end local v10           #childTop:I
    .end local v13           #i:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mBottom:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v10, v1, v4

    .line 1676
    .restart local v10       #childTop:I
    goto :goto_0

    .line 1680
    .end local v10           #childTop:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1681
    .restart local v10       #childTop:I
    goto :goto_0

    .line 1693
    .restart local v2       #child:Landroid/view/View;
    .restart local v13       #i:I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 1694
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1695
    .local v5, childWidth:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1697
    .local v6, childHeight:I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1700
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1701
    .local v12, gravity:I
    if-gez v12, :cond_2

    .line 1702
    move/from16 v12, v17

    .line 1704
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v14

    .line 1705
    .local v14, layoutDirection:I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 1706
    .local v7, absoluteGravity:I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1718
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 1722
    .local v3, childLeft:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1723
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 1726
    :cond_3
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 1727
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1729
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1731
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_2

    .line 1708
    .end local v3           #childLeft:I
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1710
    .restart local v3       #childLeft:I
    goto :goto_3

    .line 1713
    .end local v3           #childLeft:I
    :sswitch_3
    sub-int v1, v8, v5

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1714
    .restart local v3       #childLeft:I
    goto :goto_3

    .line 1734
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childLeft:I
    .end local v5           #childWidth:I
    .end local v6           #childHeight:I
    .end local v7           #absoluteGravity:I
    .end local v12           #gravity:I
    .end local v14           #layoutDirection:I
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    .line 1672
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1706
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 1610
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1612
    return-void
.end method

.method measureHorizontal(II)V
    .locals 48
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1070
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1071
    const/16 v36, 0x0

    .line 1072
    .local v36, maxHeight:I
    const/16 v18, 0x0

    .line 1073
    .local v18, childState:I
    const/4 v11, 0x0

    .line 1074
    .local v11, alternativeMaxHeight:I
    const/16 v44, 0x0

    .line 1075
    .local v44, weightedMaxHeight:I
    const/4 v10, 0x1

    .line 1076
    .local v10, allFillParent:Z
    const/16 v41, 0x0

    .line 1078
    .local v41, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    .line 1080
    .local v20, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v45

    .line 1081
    .local v45, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 1083
    .local v25, heightMode:I
    const/16 v32, 0x0

    .line 1085
    .local v32, matchHeight:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 1086
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1087
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1090
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v34, v0

    .line 1091
    .local v34, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v35, v0

    .line 1093
    .local v35, maxDescent:[I
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1094
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v35, v8

    aput v9, v35, v7

    aput v9, v35, v6

    aput v9, v35, v3

    .line 1096
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1097
    .local v13, baselineAligned:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v42, v0

    .line 1099
    .local v42, useLargestChild:Z
    const/high16 v3, 0x4000

    move/from16 v0, v45

    if-ne v0, v3, :cond_3

    const/16 v27, 0x1

    .line 1101
    .local v27, isExactly:Z
    :goto_0
    const/high16 v28, -0x8000

    .line 1103
    .local v28, largestChildWidth:I
    const/16 v29, -0x1

    .line 1104
    .local v29, level:I
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_2

    .line 1105
    invoke-direct/range {p0 .. p0}, Landroid/widget/LinearLayout;->getCurrentLevel()I

    move-result v29

    .line 1106
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.1 (Horizontal), this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_18

    .line 1111
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1113
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_4

    .line 1114
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1110
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1099
    .end local v4           #child:Landroid/view/View;
    .end local v5           #i:I
    .end local v27           #isExactly:Z
    .end local v28           #largestChildWidth:I
    .end local v29           #level:I
    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    .line 1118
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v27       #isExactly:Z
    .restart local v28       #largestChildWidth:I
    .restart local v29       #level:I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5

    .line 1119
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1120
    goto :goto_2

    .line 1123
    :cond_5
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_6

    .line 1124
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.1, this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1128
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1131
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1134
    .local v30, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v41, v41, v3

    .line 1136
    const/high16 v3, 0x4000

    move/from16 v0, v45

    if-ne v0, v3, :cond_d

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_d

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    .line 1140
    if-eqz v27, :cond_b

    .line 1141
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1149
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->resetMeasuredWidthDimension()V

    .line 1157
    if-eqz v13, :cond_c

    .line 1158
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1159
    .local v23, freeSpec:I
    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1161
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_8

    .line 1162
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Measured(BaselineAligned), mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalWeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v23           #freeSpec:I
    :cond_8
    :goto_4
    const/16 v33, 0x0

    .line 1222
    .local v33, matchHeightLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v25

    if-eq v0, v3, :cond_9

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_9

    .line 1226
    const/16 v32, 0x1

    .line 1227
    const/16 v33, 0x1

    .line 1230
    :cond_9
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v31, v3, v6

    .line 1231
    .local v31, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 1232
    .local v16, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1234
    if-eqz v13, :cond_a

    .line 1235
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1236
    .local v14, childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_a

    .line 1239
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_5
    and-int/lit8 v24, v3, 0x70

    .line 1241
    .local v24, gravity:I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1244
    .local v26, index:I
    aget v3, v34, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 1245
    aget v3, v35, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v26

    .line 1249
    .end local v14           #childBaseline:I
    .end local v24           #gravity:I
    .end local v26           #index:I
    :cond_a
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1251
    if-eqz v10, :cond_14

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_14

    const/4 v10, 0x1

    .line 1252
    :goto_6
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_16

    .line 1257
    if-eqz v33, :cond_15

    .end local v31           #margin:I
    :goto_7
    move/from16 v0, v44

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 1264
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 1143
    .end local v16           #childHeight:I
    .end local v33           #matchHeightLocally:Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v40, v0

    .line 1144
    .local v40, totalLength:I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v3, v40

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_3

    .line 1166
    .end local v40           #totalLength:I
    :cond_c
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_8

    .line 1167
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skipped, mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalWeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1172
    :cond_d
    const/high16 v38, -0x8000

    .line 1174
    .local v38, oldWidth:I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_e

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_e

    .line 1179
    const/16 v38, 0x0

    .line 1180
    const/4 v3, -0x2

    move-object/from16 v0, v30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1182
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_e

    .line 1183
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Modified, LayoutParams.height change to WRAP_CONTENT, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_e
    const/4 v3, 0x0

    cmpl-float v3, v41, v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1196
    const/high16 v3, -0x8000

    move/from16 v0, v38

    if-eq v0, v3, :cond_f

    .line 1197
    move/from16 v0, v38

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1200
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1201
    .local v19, childWidth:I
    if-eqz v27, :cond_12

    .line 1202
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1210
    :goto_a
    if-eqz v42, :cond_10

    .line 1211
    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1214
    :cond_10
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_8

    .line 1215
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Measured, measure result = ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalWeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1192
    .end local v19           #childWidth:I
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1205
    .restart local v19       #childWidth:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v40, v0

    .line 1206
    .restart local v40       #totalLength:I
    add-int v3, v40, v19

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_a

    .line 1239
    .end local v19           #childWidth:I
    .end local v38           #oldWidth:I
    .end local v40           #totalLength:I
    .restart local v14       #childBaseline:I
    .restart local v16       #childHeight:I
    .restart local v31       #margin:I
    .restart local v33       #matchHeightLocally:Z
    :cond_13
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_5

    .line 1251
    .end local v14           #childBaseline:I
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_15
    move/from16 v31, v16

    .line 1257
    goto/16 :goto_7

    .line 1260
    :cond_16
    if-eqz v33, :cond_17

    .end local v31           #margin:I
    :goto_b
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    .restart local v31       #margin:I
    :cond_17
    move/from16 v31, v16

    goto :goto_b

    .line 1267
    .end local v4           #child:Landroid/view/View;
    .end local v16           #childHeight:I
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #margin:I
    .end local v33           #matchHeightLocally:Z
    :cond_18
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_19

    .line 1268
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.1, maxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "weightedMaxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alternativeMaxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_1a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1274
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1279
    :cond_1a
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1b

    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1b

    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1b

    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1c

    .line 1283
    :cond_1b
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1286
    .local v12, ascent:I
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, 0x0

    aget v6, v35, v6

    const/4 v7, 0x1

    aget v7, v35, v7

    const/4 v8, 0x2

    aget v8, v35, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1289
    .local v22, descent:I
    add-int v3, v12, v22

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1292
    .end local v12           #ascent:I
    .end local v22           #descent:I
    :cond_1c
    if-eqz v42, :cond_22

    const/high16 v3, -0x8000

    move/from16 v0, v45

    if-eq v0, v3, :cond_1d

    if-nez v45, :cond_22

    .line 1294
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1296
    const/4 v5, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v5, v0, :cond_21

    .line 1297
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1299
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_1e

    .line 1300
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1296
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1304
    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1f

    .line 1305
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1306
    goto :goto_d

    .line 1309
    :cond_1f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1311
    .restart local v30       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v27, :cond_20

    .line 1312
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v28

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 1315
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v40, v0

    .line 1316
    .restart local v40       #totalLength:I
    add-int v3, v40, v28

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 1321
    .end local v4           #child:Landroid/view/View;
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v40           #totalLength:I
    :cond_21
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_22

    .line 1322
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.1.5, Use largest child, largestChildWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1329
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v46, v0

    .line 1332
    .local v46, widthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v46

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v46

    .line 1335
    const/4 v3, 0x0

    move/from16 v0, v46

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v47

    .line 1336
    .local v47, widthSizeAndState:I
    const v3, 0xffffff

    and-int v46, v47, v3

    .line 1340
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v21, v46, v3

    .line 1342
    .local v21, delta:I
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_23

    .line 1343
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.2, delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", widthSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "padding (L,R,T,B) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_23
    if-eqz v21, :cond_3a

    const/4 v3, 0x0

    cmpl-float v3, v41, v3

    if-lez v3, :cond_3a

    .line 1348
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v43, v0

    .line 1350
    .local v43, weightSum:F
    :goto_e
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1351
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v35, v8

    aput v9, v35, v7

    aput v9, v35, v6

    aput v9, v35, v3

    .line 1352
    const/16 v36, -0x1

    .line 1354
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1356
    const/4 v5, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v5, v0, :cond_33

    .line 1357
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1359
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_26

    .line 1356
    :cond_24
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v4           #child:Landroid/view/View;
    .end local v43           #weightSum:F
    :cond_25
    move/from16 v43, v41

    .line 1348
    goto :goto_e

    .line 1363
    .restart local v4       #child:Landroid/view/View;
    .restart local v43       #weightSum:F
    :cond_26
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_27

    .line 1364
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_27
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1370
    .restart local v30       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1371
    .local v15, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_2b

    .line 1373
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v43

    float-to-int v0, v3

    move/from16 v39, v0

    .line 1374
    .local v39, share:I
    sub-float v43, v43, v15

    .line 1375
    sub-int v21, v21, v39

    .line 1377
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1384
    .local v17, childHeightMeasureSpec:I
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_28

    const/high16 v3, 0x4000

    move/from16 v0, v45

    if-eq v0, v3, :cond_2c

    .line 1387
    :cond_28
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v39

    .line 1388
    .restart local v19       #childWidth:I
    if-gez v19, :cond_29

    .line 1389
    const/16 v19, 0x0

    .line 1392
    :cond_29
    const/high16 v3, 0x4000

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1396
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_2a

    .line 1397
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2-1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "measure result = ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "share = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", childWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    .end local v19           #childWidth:I
    :cond_2a
    :goto_11
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x100

    and-int/2addr v3, v6

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1419
    .end local v17           #childHeightMeasureSpec:I
    .end local v39           #share:I
    :cond_2b
    if-eqz v27, :cond_2e

    .line 1420
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v30

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1428
    :goto_12
    const/high16 v3, 0x4000

    move/from16 v0, v25

    if-eq v0, v3, :cond_2f

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2f

    const/16 v33, 0x1

    .line 1431
    .restart local v33       #matchHeightLocally:Z
    :goto_13
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v31, v3, v6

    .line 1432
    .restart local v31       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 1433
    .restart local v16       #childHeight:I
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1434
    if-eqz v33, :cond_30

    .end local v31           #margin:I
    :goto_14
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1437
    if-eqz v10, :cond_31

    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_31

    const/4 v10, 0x1

    .line 1439
    :goto_15
    if-eqz v13, :cond_24

    .line 1440
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1441
    .restart local v14       #childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_24

    .line 1443
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_16
    and-int/lit8 v24, v3, 0x70

    .line 1445
    .restart local v24       #gravity:I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1448
    .restart local v26       #index:I
    aget v3, v34, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 1449
    aget v3, v35, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v26

    goto/16 :goto_10

    .line 1403
    .end local v14           #childBaseline:I
    .end local v16           #childHeight:I
    .end local v24           #gravity:I
    .end local v26           #index:I
    .end local v33           #matchHeightLocally:Z
    .restart local v17       #childHeightMeasureSpec:I
    .restart local v39       #share:I
    :cond_2c
    if-lez v39, :cond_2d

    move/from16 v3, v39

    :goto_17
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1407
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_2a

    .line 1408
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2-1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "measure result = ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "share = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1403
    :cond_2d
    const/4 v3, 0x0

    goto/16 :goto_17

    .line 1423
    .end local v17           #childHeightMeasureSpec:I
    .end local v39           #share:I
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v40, v0

    .line 1424
    .restart local v40       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v40

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_12

    .line 1428
    .end local v40           #totalLength:I
    :cond_2f
    const/16 v33, 0x0

    goto/16 :goto_13

    .restart local v16       #childHeight:I
    .restart local v31       #margin:I
    .restart local v33       #matchHeightLocally:Z
    :cond_30
    move/from16 v31, v16

    .line 1434
    goto/16 :goto_14

    .line 1437
    .end local v31           #margin:I
    :cond_31
    const/4 v10, 0x0

    goto/16 :goto_15

    .line 1443
    .restart local v14       #childBaseline:I
    :cond_32
    move-object/from16 v0, v30

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_16

    .line 1456
    .end local v4           #child:Landroid/view/View;
    .end local v14           #childBaseline:I
    .end local v15           #childExtra:F
    .end local v16           #childHeight:I
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v33           #matchHeightLocally:Z
    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1458
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_34

    .line 1459
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.2-1, maxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "weightedMaxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alternativeMaxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_34
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_35

    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_35

    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_35

    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_36

    .line 1472
    :cond_35
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1475
    .restart local v12       #ascent:I
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, 0x0

    aget v6, v35, v6

    const/4 v7, 0x1

    aget v7, v35, v7

    const/4 v8, 0x2

    aget v8, v35, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1478
    .restart local v22       #descent:I
    add-int v3, v12, v22

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1520
    .end local v12           #ascent:I
    .end local v22           #descent:I
    .end local v43           #weightSum:F
    :cond_36
    :goto_18
    if-nez v10, :cond_37

    const/high16 v3, 0x4000

    move/from16 v0, v25

    if-eq v0, v3, :cond_37

    .line 1521
    move/from16 v36, v11

    .line 1524
    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int v36, v36, v3

    .line 1527
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1529
    const/high16 v3, -0x100

    and-int v3, v3, v18

    or-int v3, v3, v47

    shl-int/lit8 v6, v18, 0x10

    move/from16 v0, v36

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1533
    if-eqz v32, :cond_39

    .line 1534
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_38

    .line 1535
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.3, Force uniform height, uniformWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_38
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1540
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_39

    .line 1541
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.3, this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_39
    return-void

    .line 1481
    :cond_3a
    move/from16 v0, v44

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1485
    if-eqz v42, :cond_3f

    const/high16 v3, 0x4000

    move/from16 v0, v45

    if-eq v0, v3, :cond_3f

    .line 1486
    const/4 v5, 0x0

    :goto_19
    move/from16 v0, v20

    if-ge v5, v0, :cond_3f

    .line 1487
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1489
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3c

    .line 1486
    :cond_3b
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1493
    :cond_3c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1496
    .restart local v30       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1497
    .restart local v15       #childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_3d

    .line 1498
    const/high16 v3, 0x4000

    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1504
    :cond_3d
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_3b

    .line 1505
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 1506
    .local v37, measureString:Ljava/lang/String;
    :goto_1b
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "measure result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 1505
    .end local v37           #measureString:Ljava/lang/String;
    :cond_3e
    const-string v37, "No new result"

    goto :goto_1b

    .line 1512
    .end local v4           #child:Landroid/view/View;
    .end local v15           #childExtra:F
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3f
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_36

    .line 1513
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.2-2, maxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "weightedMaxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alternativeMaxHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18
.end method

.method measureNullChild(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 39
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 653
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 654
    const/16 v28, 0x0

    .line 655
    .local v28, maxWidth:I
    const/4 v15, 0x0

    .line 656
    .local v15, childState:I
    const/4 v11, 0x0

    .line 657
    .local v11, alternativeMaxWidth:I
    const/16 v37, 0x0

    .line 658
    .local v37, weightedMaxWidth:I
    const/4 v10, 0x1

    .line 659
    .local v10, allFillParent:Z
    const/16 v34, 0x0

    .line 661
    .local v34, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v17

    .line 663
    .local v17, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v38

    .line 664
    .local v38, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 666
    .local v19, heightMode:I
    const/16 v26, 0x0

    .line 668
    .local v26, matchWidth:Z
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 669
    .local v12, baselineChildIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v35, v0

    .line 671
    .local v35, useLargestChild:Z
    const/high16 v22, -0x8000

    .line 673
    .local v22, largestChildHeight:I
    const/16 v23, -0x1

    .line 674
    .local v23, level:I
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_0

    .line 675
    invoke-direct/range {p0 .. p0}, Landroid/widget/LinearLayout;->getCurrentLevel()I

    move-result v23

    .line 676
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.1 (Vertical), this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_12

    .line 681
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 683
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_1

    .line 684
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 680
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2

    .line 689
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 690
    goto :goto_1

    .line 693
    :cond_2
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_3

    .line 694
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 698
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 701
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 703
    .local v24, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v34, v34, v3

    .line 705
    const/high16 v3, 0x4000

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_7

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    .line 710
    invoke-virtual {v4}, Landroid/view/View;->resetMeasuredHeightDimension()V

    .line 712
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 713
    .local v33, totalLength:I
    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v3, v3, v33

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 715
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_5

    .line 716
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skipped, mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalWeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_5
    :goto_2
    if-ltz v12, :cond_6

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_6

    .line 769
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 775
    :cond_6
    if-ge v5, v12, :cond_c

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    .line 776
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 720
    .end local v33           #totalLength:I
    :cond_7
    const/high16 v31, -0x8000

    .line 722
    .local v31, oldHeight:I
    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_8

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 727
    const/16 v31, 0x0

    .line 728
    const/4 v3, -0x2

    move-object/from16 v0, v24

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 730
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_8

    .line 731
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Modified, LayoutParams.height change to WRAP_CONTENT, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_8
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v34, v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 744
    const/high16 v3, -0x8000

    move/from16 v0, v31

    if-eq v0, v3, :cond_9

    .line 745
    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 748
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 749
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 750
    .restart local v33       #totalLength:I
    add-int v3, v33, v14

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 753
    if-eqz v35, :cond_a

    .line 754
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 757
    :cond_a
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_5

    .line 758
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Measured, measure result = ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalWeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 740
    .end local v14           #childHeight:I
    .end local v33           #totalLength:I
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 782
    .end local v31           #oldHeight:I
    .restart local v33       #totalLength:I
    :cond_c
    const/16 v27, 0x0

    .line 783
    .local v27, matchWidthLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v38

    if-eq v0, v3, :cond_d

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_d

    .line 788
    const/16 v26, 0x1

    .line 789
    const/16 v27, 0x1

    .line 792
    :cond_d
    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v25, v3, v6

    .line 793
    .local v25, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v30, v3, v25

    .line 794
    .local v30, measuredWidth:I
    move/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 795
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 797
    if-eqz v10, :cond_e

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_e

    const/4 v10, 0x1

    .line 798
    :goto_4
    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_10

    .line 803
    if-eqz v27, :cond_f

    .end local v25           #margin:I
    :goto_5
    move/from16 v0, v37

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 810
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 797
    .restart local v25       #margin:I
    :cond_e
    const/4 v10, 0x0

    goto :goto_4

    :cond_f
    move/from16 v25, v30

    .line 803
    goto :goto_5

    .line 806
    :cond_10
    if-eqz v27, :cond_11

    .end local v25           #margin:I
    :goto_7
    move/from16 v0, v25

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    .restart local v25       #margin:I
    :cond_11
    move/from16 v25, v30

    goto :goto_7

    .line 813
    .end local v4           #child:Landroid/view/View;
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v25           #margin:I
    .end local v27           #matchWidthLocally:Z
    .end local v30           #measuredWidth:I
    .end local v33           #totalLength:I
    :cond_12
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_13

    .line 814
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.1, maxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "weightedMaxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alternativeMaxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 820
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 823
    :cond_14
    if-eqz v35, :cond_19

    const/high16 v3, -0x8000

    move/from16 v0, v19

    if-eq v0, v3, :cond_15

    if-nez v19, :cond_19

    .line 825
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 827
    const/4 v5, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v5, v0, :cond_18

    .line 828
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 830
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_16

    .line 831
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 827
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 835
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_17

    .line 836
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 837
    goto :goto_9

    .line 840
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 843
    .restart local v24       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 844
    .restart local v33       #totalLength:I
    add-int v3, v33, v22

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_9

    .line 848
    .end local v4           #child:Landroid/view/View;
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v33           #totalLength:I
    :cond_18
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_19

    .line 849
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.1.5, Use largest child, largestChildHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    .line 859
    .local v20, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 862
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v21

    .line 863
    .local v21, heightSizeAndState:I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 867
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v18, v20, v3

    .line 869
    .local v18, delta:I
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_1a

    .line 870
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.2, delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", heightSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "padding (L,R,T,B) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1a
    if-eqz v18, :cond_2c

    const/4 v3, 0x0

    cmpl-float v3, v34, v3

    if-lez v3, :cond_2c

    .line 875
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v36, v0

    .line 877
    .local v36, weightSum:F
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 879
    const/4 v5, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v5, v0, :cond_27

    .line 880
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 882
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1c

    .line 879
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .end local v4           #child:Landroid/view/View;
    .end local v36           #weightSum:F
    :cond_1b
    move/from16 v36, v34

    .line 875
    goto :goto_a

    .line 886
    .restart local v4       #child:Landroid/view/View;
    .restart local v36       #weightSum:F
    :cond_1c
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_1d

    .line 887
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_1d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 892
    .restart local v24       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v24

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 893
    .local v13, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_21

    .line 895
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v36

    float-to-int v0, v3

    move/from16 v32, v0

    .line 896
    .local v32, share:I
    sub-float v36, v36, v13

    .line 897
    sub-int v18, v18, v32

    .line 899
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 905
    .local v16, childWidthMeasureSpec:I
    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_1e

    const/high16 v3, 0x4000

    move/from16 v0, v19

    if-eq v0, v3, :cond_22

    .line 908
    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v32

    .line 909
    .restart local v14       #childHeight:I
    if-gez v14, :cond_1f

    .line 910
    const/4 v14, 0x0

    .line 913
    :cond_1f
    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 916
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_20

    .line 917
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2-1-1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "measure result = ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "share = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", childHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .end local v14           #childHeight:I
    :cond_20
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 940
    .end local v16           #childWidthMeasureSpec:I
    .end local v32           #share:I
    :cond_21
    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v25, v3, v6

    .line 941
    .restart local v25       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v30, v3, v25

    .line 942
    .restart local v30       #measuredWidth:I
    move/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 944
    const/high16 v3, 0x4000

    move/from16 v0, v38

    if-eq v0, v3, :cond_24

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_24

    const/16 v27, 0x1

    .line 947
    .restart local v27       #matchWidthLocally:Z
    :goto_e
    if-eqz v27, :cond_25

    .end local v25           #margin:I
    :goto_f
    move/from16 v0, v25

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 950
    if-eqz v10, :cond_26

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_26

    const/4 v10, 0x1

    .line 952
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v33, v0

    .line 953
    .restart local v33       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v33

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_c

    .line 924
    .end local v27           #matchWidthLocally:Z
    .end local v30           #measuredWidth:I
    .end local v33           #totalLength:I
    .restart local v16       #childWidthMeasureSpec:I
    .restart local v32       #share:I
    :cond_22
    if-lez v32, :cond_23

    move/from16 v3, v32

    :goto_11
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 928
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_20

    .line 929
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2-1-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "measure result = ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "share = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 924
    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 944
    .end local v16           #childWidthMeasureSpec:I
    .end local v32           #share:I
    .restart local v25       #margin:I
    .restart local v30       #measuredWidth:I
    :cond_24
    const/16 v27, 0x0

    goto/16 :goto_e

    .restart local v27       #matchWidthLocally:Z
    :cond_25
    move/from16 v25, v30

    .line 947
    goto/16 :goto_f

    .line 950
    .end local v25           #margin:I
    :cond_26
    const/4 v10, 0x0

    goto/16 :goto_10

    .line 958
    .end local v4           #child:Landroid/view/View;
    .end local v13           #childExtra:F
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v27           #matchWidthLocally:Z
    .end local v30           #measuredWidth:I
    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 960
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_28

    .line 961
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.2-1, maxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "weightedMaxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alternativeMaxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    .end local v36           #weightSum:F
    :cond_28
    :goto_12
    if-nez v10, :cond_29

    const/high16 v3, 0x4000

    move/from16 v0, v38

    if-eq v0, v3, :cond_29

    .line 1011
    move/from16 v28, v11

    .line 1014
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    add-int v28, v28, v3

    .line 1017
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v28

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1019
    move/from16 v0, v28

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1022
    if-eqz v26, :cond_2b

    .line 1023
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_2a

    .line 1024
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.3, Force uniform width, uniformWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_2a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 1029
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_2b

    .line 1030
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.3, this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_2b
    return-void

    .line 968
    :cond_2c
    move/from16 v0, v37

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 974
    if-eqz v35, :cond_31

    const/high16 v3, 0x4000

    move/from16 v0, v19

    if-eq v0, v3, :cond_31

    .line 975
    const/4 v5, 0x0

    :goto_13
    move/from16 v0, v17

    if-ge v5, v0, :cond_31

    .line 976
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 978
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2e

    .line 975
    :cond_2d
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 982
    :cond_2e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 985
    .restart local v24       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v24

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 986
    .restart local v13       #childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_2f

    .line 987
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x4000

    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 994
    :cond_2f
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_2d

    .line 995
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 996
    .local v29, measureString:Ljava/lang/String;
    :goto_15
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child 2-2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "measure result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "child = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 995
    .end local v29           #measureString:Ljava/lang/String;
    :cond_30
    const-string v29, "No new result"

    goto :goto_15

    .line 1002
    .end local v4           #child:Landroid/view/View;
    .end local v13           #childExtra:F
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_31
    sget-boolean v3, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_28

    .line 1003
    const-string v3, "Layout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LinearLayout] -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pass.2-2, maxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "weightedMaxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alternativeMaxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mTotalLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 324
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1976
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1977
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1978
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1982
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1983
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1984
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1639
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1640
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 598
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getCurrentLevel()I

    move-result v0

    .line 599
    .local v0, level:I
    sget-boolean v1, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_0

    .line 600
    const-string v1, "Layout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LinearLayout][onMeasure] +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 605
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 609
    :goto_0
    sget-boolean v1, Landroid/widget/LinearLayout;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_1

    .line 610
    const-string v1, "Layout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LinearLayout][onMeasure] -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "measure result = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "min dimension = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "this ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    return-void

    .line 607
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .parameter "baselineAligned"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 431
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 432
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 535
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 540
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 273
    if-eqz p1, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 280
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 277
    :cond_2
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 278
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 294
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 295
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1907
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1908
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1909
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1912
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1913
    or-int/lit8 p1, p1, 0x30

    .line 1916
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1917
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1919
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 1923
    and-int v0, p1, v2

    .line 1924
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1925
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1926
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1928
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 462
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 463
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1880
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1881
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1882
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1884
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .parameter "showDividers"

    .prologue
    .line 229
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 232
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 233
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1932
    and-int/lit8 v0, p1, 0x70

    .line 1933
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1934
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1935
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1937
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .parameter "weightSum"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 594
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method
