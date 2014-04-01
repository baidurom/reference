.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v0, density:F
    const/high16 v1, 0x4260

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 56
    const/high16 v1, 0x4080

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 57
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 12
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 350
    .local v7, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v2, v10, p4

    .line 352
    .local v2, childHeightSize:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 353
    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 355
    .local v3, childHeightSpec:I
    const/4 v0, 0x0

    .line 356
    .local v0, cellsUsed:I
    if-lez p2, :cond_0

    .line 357
    mul-int v10, p1, p2

    const/high16 v11, -0x8000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 359
    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 362
    .local v8, measuredWidth:I
    div-int v0, v8, p1

    .line 363
    rem-int v10, v8, p1

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 366
    .end local v4           #childWidthSpec:I
    .end local v8           #measuredWidth:I
    :cond_0
    instance-of v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_1

    move-object v10, p0

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v6, v10

    .line 368
    .local v6, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    iget-boolean v10, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v10, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 369
    .local v5, expandable:Z
    :goto_1
    iput-boolean v5, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 371
    iput v0, v7, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 372
    mul-int v9, v0, p1

    .line 373
    .local v9, targetWidth:I
    const/high16 v10, 0x4000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Landroid/view/View;->measure(II)V

    .line 375
    return v0

    .line 366
    .end local v5           #expandable:Z
    .end local v6           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v9           #targetWidth:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 368
    .restart local v6       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private onMeasureExactFormat(II)V
    .locals 44
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 117
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 118
    .local v18, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v39

    .line 119
    .local v39, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 121
    .local v20, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v41

    add-int v38, v40, v41

    .line 122
    .local v38, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v41

    add-int v19, v40, v41

    .line 124
    .local v19, heightPadding:I
    sub-int v39, v39, v38

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v40, v0

    div-int v5, v39, v40

    .line 128
    .local v5, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v40, v0

    rem-int v7, v39, v40

    .line 130
    .local v7, cellSizeRemaining:I
    if-nez v5, :cond_0

    .line 132
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 331
    :goto_0
    return-void

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v40, v0

    div-int v41, v7, v5

    add-int v6, v40, v41

    .line 138
    .local v6, cellSize:I
    move v9, v5

    .line 139
    .local v9, cellsRemaining:I
    const/16 v27, 0x0

    .line 140
    .local v27, maxChildHeight:I
    const/4 v4, 0x0

    .line 141
    .local v4, allTextItem:Z
    const/16 v26, 0x0

    .line 142
    .local v26, maxCellsUsed:I
    const/4 v15, 0x0

    .line 143
    .local v15, expandableItemCount:I
    const/16 v36, 0x0

    .line 144
    .local v36, visibleItemCount:I
    const/16 v17, 0x0

    .line 147
    .local v17, hasOverflow:Z
    const-wide/16 v34, 0x0

    .line 149
    .local v34, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v13

    .line 150
    .local v13, childCount:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v13, :cond_c

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 152
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    .line 150
    :cond_1
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 154
    :cond_2
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v23, v0

    .line 155
    .local v23, isGeneratedItem:Z
    add-int/lit8 v36, v36, 0x1

    .line 157
    if-eqz v23, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 163
    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 164
    .local v25, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 165
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 166
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 167
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 168
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 169
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 170
    if-eqz v23, :cond_7

    move-object/from16 v40, v12

    check-cast v40, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v40

    if-eqz v40, :cond_7

    const/16 v40, 0x1

    :goto_3
    move/from16 v0, v40

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 173
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-eqz v40, :cond_8

    const/4 v8, 0x1

    .line 175
    .local v8, cellsAvailable:I
    :goto_4
    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v12, v6, v8, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v10

    .line 178
    .local v10, cellsUsed:I
    move/from16 v0, v26

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 179
    if-nez v4, :cond_4

    .line 180
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v40, v0

    if-eqz v40, :cond_9

    move-object/from16 v40, v12

    check-cast v40, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object/from16 v24, v40

    .line 181
    .local v24, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_5
    if-nez v24, :cond_a

    const/4 v4, 0x0

    .line 183
    .end local v24           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    :goto_6
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v40, v0

    if-eqz v40, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 184
    :cond_5
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-eqz v40, :cond_6

    const/16 v17, 0x1

    .line 186
    :cond_6
    sub-int/2addr v9, v10

    .line 187
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    move/from16 v0, v27

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 188
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ne v10, v0, :cond_1

    const/16 v40, 0x1

    shl-int v40, v40, v22

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v34, v34, v40

    goto/16 :goto_2

    .line 170
    .end local v8           #cellsAvailable:I
    .end local v10           #cellsUsed:I
    :cond_7
    const/16 v40, 0x0

    goto :goto_3

    :cond_8
    move v8, v9

    .line 173
    goto :goto_4

    .line 180
    .restart local v8       #cellsAvailable:I
    .restart local v10       #cellsUsed:I
    :cond_9
    const/16 v24, 0x0

    goto :goto_5

    .line 181
    .restart local v24       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_a
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/view/menu/ActionMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v40

    if-nez v40, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 193
    .end local v8           #cellsAvailable:I
    .end local v10           #cellsUsed:I
    .end local v12           #child:Landroid/view/View;
    .end local v23           #isGeneratedItem:Z
    .end local v24           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_c
    if-eqz v17, :cond_e

    const/16 v40, 0x2

    move/from16 v0, v36

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    const/4 v11, 0x1

    .line 198
    .local v11, centerSingleExpandedItem:Z
    :goto_7
    const/16 v32, 0x0

    .line 199
    .local v32, needsExpansion:Z
    :goto_8
    if-lez v15, :cond_12

    if-lez v9, :cond_12

    .line 200
    const v28, 0x7fffffff

    .line 201
    .local v28, minCells:I
    const-wide/16 v29, 0x0

    .line 202
    .local v29, minCellsAt:J
    const/16 v31, 0x0

    .line 203
    .local v31, minCellsItemCount:I
    const/16 v22, 0x0

    :goto_9
    move/from16 v0, v22

    if-ge v0, v13, :cond_11

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 205
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 208
    .restart local v25       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v40, v0

    if-nez v40, :cond_f

    .line 203
    :cond_d
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 193
    .end local v11           #centerSingleExpandedItem:Z
    .end local v12           #child:Landroid/view/View;
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v28           #minCells:I
    .end local v29           #minCellsAt:J
    .end local v31           #minCellsItemCount:I
    .end local v32           #needsExpansion:Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_7

    .line 211
    .restart local v11       #centerSingleExpandedItem:Z
    .restart local v12       #child:Landroid/view/View;
    .restart local v25       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v28       #minCells:I
    .restart local v29       #minCellsAt:J
    .restart local v31       #minCellsItemCount:I
    .restart local v32       #needsExpansion:Z
    :cond_f
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v28

    if-ge v0, v1, :cond_10

    .line 212
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v28, v0

    .line 213
    const/16 v40, 0x1

    shl-int v40, v40, v22

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v29, v0

    .line 214
    const/16 v31, 0x1

    goto :goto_a

    .line 215
    :cond_10
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 216
    const/16 v40, 0x1

    shl-int v40, v40, v22

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v29, v29, v40

    .line 217
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 222
    .end local v12           #child:Landroid/view/View;
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_11
    or-long v34, v34, v29

    .line 224
    move/from16 v0, v31

    if-le v0, v9, :cond_17

    .line 253
    .end local v28           #minCells:I
    .end local v29           #minCellsAt:J
    .end local v31           #minCellsItemCount:I
    :cond_12
    if-nez v17, :cond_1c

    const/16 v40, 0x1

    move/from16 v0, v36

    move/from16 v1, v40

    if-ne v0, v1, :cond_1c

    const/16 v33, 0x1

    .line 254
    .local v33, singleItem:Z
    :goto_b
    if-lez v9, :cond_24

    const-wide/16 v40, 0x0

    cmp-long v40, v34, v40

    if-eqz v40, :cond_24

    add-int/lit8 v40, v36, -0x1

    move/from16 v0, v40

    if-lt v9, v0, :cond_13

    if-nez v33, :cond_13

    const/16 v40, 0x1

    move/from16 v0, v26

    move/from16 v1, v40

    if-gt v0, v1, :cond_13

    if-eqz v4, :cond_24

    .line 256
    :cond_13
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->bitCount(J)I

    move-result v40

    move/from16 v0, v40

    int-to-float v14, v0

    .line 258
    .local v14, expandCount:F
    if-nez v33, :cond_15

    .line 260
    const-wide/16 v40, 0x1

    and-long v40, v40, v34

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_14

    .line 261
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 262
    .restart local v25       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-nez v40, :cond_14

    const/high16 v40, 0x3f00

    sub-float v14, v14, v40

    .line 264
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_14
    const/16 v40, 0x1

    add-int/lit8 v41, v13, -0x1

    shl-int v40, v40, v41

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v34

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-eqz v40, :cond_15

    .line 265
    add-int/lit8 v40, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 266
    .restart local v25       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-nez v40, :cond_15

    const/high16 v40, 0x3f00

    sub-float v14, v14, v40

    .line 270
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_15
    const/16 v40, 0x0

    cmpl-float v40, v14, v40

    if-lez v40, :cond_1d

    mul-int v40, v9, v6

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v40, v40, v14

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v16, v0

    .line 273
    .local v16, extraPixels:I
    :goto_c
    const/16 v22, 0x0

    :goto_d
    move/from16 v0, v22

    if-ge v0, v13, :cond_23

    .line 274
    const/16 v40, 0x1

    shl-int v40, v40, v22

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v34

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-nez v40, :cond_1e

    .line 273
    :cond_16
    :goto_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 227
    .end local v14           #expandCount:F
    .end local v16           #extraPixels:I
    .end local v33           #singleItem:Z
    .restart local v28       #minCells:I
    .restart local v29       #minCellsAt:J
    .restart local v31       #minCellsItemCount:I
    :cond_17
    add-int/lit8 v28, v28, 0x1

    .line 229
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v13, :cond_1b

    .line 230
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 231
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 232
    .restart local v25       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v40, 0x1

    shl-int v40, v40, v22

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    and-long v40, v40, v29

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-nez v40, :cond_19

    .line 234
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    const/16 v40, 0x1

    shl-int v40, v40, v22

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    or-long v34, v34, v40

    .line 229
    :cond_18
    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 238
    :cond_19
    if-eqz v11, :cond_1a

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1a

    const/16 v40, 0x1

    move/from16 v0, v40

    if-ne v9, v0, :cond_1a

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    add-int v40, v40, v6

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 242
    :cond_1a
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 243
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 244
    add-int/lit8 v9, v9, -0x1

    goto :goto_10

    .line 247
    .end local v12           #child:Landroid/view/View;
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1b
    const/16 v32, 0x1

    .line 248
    goto/16 :goto_8

    .line 253
    .end local v28           #minCells:I
    .end local v29           #minCellsAt:J
    .end local v31           #minCellsItemCount:I
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_b

    .line 270
    .restart local v14       #expandCount:F
    .restart local v33       #singleItem:Z
    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_c

    .line 276
    .restart local v16       #extraPixels:I
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 277
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 278
    .restart local v25       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v40, v0

    if-eqz v40, :cond_20

    .line 280
    move/from16 v0, v16

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 281
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 282
    if-nez v22, :cond_1f

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v40, v0

    if-nez v40, :cond_1f

    .line 285
    if-nez v33, :cond_1f

    .line 286
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v40, v0

    div-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 289
    :cond_1f
    const/16 v32, 0x1

    goto/16 :goto_e

    .line 290
    :cond_20
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v40, v0

    if-eqz v40, :cond_21

    .line 291
    move/from16 v0, v16

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 292
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 293
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v40, v0

    div-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 294
    const/16 v32, 0x1

    goto/16 :goto_e

    .line 299
    :cond_21
    if-eqz v22, :cond_22

    .line 300
    div-int/lit8 v40, v16, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 302
    :cond_22
    add-int/lit8 v40, v13, -0x1

    move/from16 v0, v22

    move/from16 v1, v40

    if-eq v0, v1, :cond_16

    .line 303
    div-int/lit8 v40, v16, 0x2

    move/from16 v0, v40

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_e

    .line 308
    .end local v12           #child:Landroid/view/View;
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_23
    const/4 v9, 0x0

    .line 312
    .end local v14           #expandCount:F
    .end local v16           #extraPixels:I
    :cond_24
    if-eqz v32, :cond_26

    .line 313
    sub-int v40, v20, v19

    move/from16 v0, v40

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 314
    .local v21, heightSpec:I
    const/16 v22, 0x0

    :goto_11
    move/from16 v0, v22

    if-ge v0, v13, :cond_26

    .line 315
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 316
    .restart local v12       #child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 318
    .restart local v25       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v40, v0

    if-nez v40, :cond_25

    .line 314
    :goto_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 320
    :cond_25
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v40, v0

    mul-int v40, v40, v6

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v41, v0

    add-int v37, v40, v41

    .line 321
    .local v37, width:I
    const/high16 v40, 0x4000

    move/from16 v0, v37

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_12

    .line 325
    .end local v12           #child:Landroid/view/View;
    .end local v21           #heightSpec:I
    .end local v25           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v37           #width:I
    :cond_26
    const/high16 v40, 0x4000

    move/from16 v0, v18

    move/from16 v1, v40

    if-eq v0, v1, :cond_27

    .line 326
    move/from16 v20, v27

    .line 329
    :cond_27
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 330
    mul-int v40, v9, v6

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 499
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 474
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 476
    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 477
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 482
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 487
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    .line 488
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 489
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 490
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 494
    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 504
    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 505
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 522
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .line 525
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 526
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 528
    :cond_0
    if-lez p1, :cond_1

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 529
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 531
    :cond_1
    return v2
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 518
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 74
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 76
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 460
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 461
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 462
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 381
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 386
    .local v6, childCount:I
    add-int v28, p3, p5

    div-int/lit8 v14, v28, 0x2

    .line 387
    .local v14, midVertical:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 388
    .local v7, dividerWidth:I
    const/16 v17, 0x0

    .line 389
    .local v17, overflowWidth:I
    const/16 v16, 0x0

    .line 390
    .local v16, nonOverflowWidth:I
    const/4 v15, 0x0

    .line 391
    .local v15, nonOverflowCount:I
    sub-int v28, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v29

    sub-int v27, v28, v29

    .line 392
    .local v27, widthRemaining:I
    const/4 v8, 0x0

    .line 393
    .local v8, hasOverflow:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v6, :cond_6

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 395
    .local v25, v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 393
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 399
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 400
    .local v18, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 401
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 402
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 403
    add-int v17, v17, v7

    .line 406
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 407
    .local v9, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v19, v28, v29

    .line 408
    .local v19, r:I
    sub-int v11, v19, v17

    .line 409
    .local v11, l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 410
    .local v24, t:I
    add-int v5, v24, v9

    .line 411
    .local v5, b:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 413
    sub-int v27, v27, v17

    .line 414
    const/4 v8, 0x1

    .line 415
    goto :goto_2

    .line 416
    .end local v5           #b:I
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v19           #r:I
    .end local v24           #t:I
    :cond_4
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v20, v28, v29

    .line 417
    .local v20, size:I
    add-int v16, v16, v20

    .line 418
    sub-int v27, v27, v20

    .line 419
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 420
    add-int v16, v16, v7

    .line 422
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 426
    .end local v18           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20           #size:I
    .end local v25           #v:Landroid/view/View;
    :cond_6
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v6, v0, :cond_7

    if-nez v8, :cond_7

    .line 428
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 429
    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 430
    .local v26, width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 431
    .restart local v9       #height:I
    sub-int v28, p4, p2

    div-int/lit8 v13, v28, 0x2

    .line 432
    .local v13, midHorizontal:I
    div-int/lit8 v28, v26, 0x2

    sub-int v11, v13, v28

    .line 433
    .restart local v11       #l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 434
    .restart local v24       #t:I
    add-int v28, v11, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 438
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v13           #midHorizontal:I
    .end local v24           #t:I
    .end local v25           #v:Landroid/view/View;
    .end local v26           #width:I
    :cond_7
    if-eqz v8, :cond_9

    const/16 v28, 0x0

    :goto_3
    sub-int v21, v15, v28

    .line 439
    .local v21, spacerCount:I
    const/16 v29, 0x0

    if-lez v21, :cond_a

    div-int v28, v27, v21

    :goto_4
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 441
    .local v22, spacerSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v23

    .line 442
    .local v23, startLeft:I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_0

    .line 443
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 444
    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 445
    .local v12, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    iget-boolean v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 442
    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 438
    .end local v12           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21           #spacerCount:I
    .end local v22           #spacerSize:I
    .end local v23           #startLeft:I
    .end local v25           #v:Landroid/view/View;
    :cond_9
    const/16 v28, 0x1

    goto :goto_3

    .line 439
    .restart local v21       #spacerCount:I
    :cond_a
    const/16 v28, 0x0

    goto :goto_4

    .line 449
    .restart local v12       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v22       #spacerSize:I
    .restart local v23       #startLeft:I
    .restart local v25       #v:Landroid/view/View;
    :cond_b
    iget v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v23, v23, v28

    .line 450
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 451
    .restart local v26       #width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 452
    .restart local v9       #height:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 453
    .restart local v24       #t:I
    add-int v28, v23, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 454
    iget v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v22

    add-int v23, v23, v28

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 81
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 82
    .local v4, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 84
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 85
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 90
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 91
    .local v5, widthSize:I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 92
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 93
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 97
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 97
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v5           #widthSize:I
    :cond_2
    move v6, v8

    .line 82
    goto :goto_0

    .line 100
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childCount:I
    .restart local v2       #i:I
    .restart local v5       #widthSize:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 101
    .local v3, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput-boolean v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 102
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 103
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 104
    iput-boolean v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 105
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 106
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 108
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_5

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 113
    :goto_3
    return-void

    .line 111
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_3
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 470
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 61
    return-void
.end method
