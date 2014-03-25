.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final DEFAULT_RELATIVE:I = -0x80000000

.field private static LAYOUT_DIRECTION_UNDEFINED:I


# instance fields
.field public bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private initialLeftMargin:I

.field private initialRightMargin:I

.field private layoutDirection:I

.field public leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6003
    const/4 v0, -0x1

    sput v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v0, -0x8000

    .line 6056
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5983
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5991
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6006
    sget v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 6057
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 6017
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 5983
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5991
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6006
    sget v2, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 6019
    sget-object v2, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6020
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 6024
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 6026
    .local v1, margin:I
    if-ltz v1, :cond_0

    .line 6027
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6028
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6029
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6030
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6046
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 6047
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 6049
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6050
    return-void

    .line 6032
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6034
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6036
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6038
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6040
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6042
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/high16 v0, -0x8000

    .line 6085
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5983
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5991
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6006
    sget v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 6086
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/high16 v0, -0x8000

    .line 6064
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 5983
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 5991
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6006
    sget v0, Landroid/view/ViewGroup$MarginLayoutParams;->LAYOUT_DIRECTION_UNDEFINED:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    .line 6065
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6066
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6068
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6069
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6070
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6071
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6072
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6073
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6075
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 6076
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 6078
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 6079
    return-void
.end method


# virtual methods
.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 6228
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    return v0
.end method

.method public getMarginEnd()I
    .locals 2

    .prologue
    .line 6187
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6193
    :goto_0
    return v0

    .line 6188
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    packed-switch v0, :pswitch_data_0

    .line 6193
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6190
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 6188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getMarginStart()I
    .locals 2

    .prologue
    .line 6158
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6164
    :goto_0
    return v0

    .line 6159
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    packed-switch v0, :pswitch_data_0

    .line 6164
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 6161
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6258
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarginRelative()Z
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 6206
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 6266
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    const v5, -0xff01

    move-object v0, p2

    #calls: Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->access$500(Landroid/graphics/Canvas;IIIII)V

    .line 6271
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 2
    .parameter "layoutDirection"

    .prologue
    const/high16 v1, -0x8000

    .line 6237
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 6239
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6252
    :goto_0
    return-void

    .line 6241
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 6248
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v1, :cond_3

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    :goto_1
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6249
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v1, :cond_4

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    :goto_2
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6243
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    :goto_3
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6244
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    :goto_4
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 6243
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    goto :goto_3

    .line 6244
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    goto :goto_4

    .line 6248
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    goto :goto_1

    .line 6249
    :cond_4
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    goto :goto_2

    .line 6241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 6216
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 6219
    :goto_0
    return-void

    .line 6218
    :cond_0
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->layoutDirection:I

    goto :goto_0
.end method

.method public setMarginEnd(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 6176
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6177
    return-void
.end method

.method public setMarginStart(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 6147
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6148
    return-void
.end method

.method public setMargins(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 6104
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6105
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6106
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6107
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6108
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 6109
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 6110
    return-void
.end method

.method public setMarginsRelative(IIII)V
    .locals 1
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 6131
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 6132
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6133
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6134
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6135
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialLeftMargin:I

    .line 6136
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->initialRightMargin:I

    .line 6137
    return-void
.end method
