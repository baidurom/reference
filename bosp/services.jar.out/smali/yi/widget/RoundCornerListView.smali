.class public Lyi/widget/RoundCornerListView;
.super Landroid/widget/ListView;
.source "RoundCornerListView.java"


# static fields
.field public static final BOTTOM_ROUND_CORNER:I = 0x2

.field public static final NO_ROUND_CORNER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RoundCornerListView"

.field public static final TOP_BOTTOM_ROUND_CORNER:I = 0x3

.field public static final TOP_ROUND_CORNER:I = 0x1


# instance fields
.field mBottomSelector:Landroid/graphics/drawable/Drawable;

.field mCornerType:I

.field mNormalSelector:Landroid/graphics/drawable/Drawable;

.field mSingleSelector:Landroid/graphics/drawable/Drawable;

.field mTopSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    .line 33
    const v0, 0x4010048

    invoke-direct {p0, p1, p2, v0}, Lyi/widget/RoundCornerListView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lyi/widget/RoundCornerListView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 49
    sget-object v1, Lcom/yi/internal/R$styleable;->RoundCornerListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 55
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    .line 59
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    iget-object v1, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40800c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    .line 67
    :cond_0
    iget-object v1, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40800ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_1
    iget-object v1, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40800bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_2
    iget-object v1, p0, Lyi/widget/RoundCornerListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x40800ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lyi/widget/RoundCornerListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_3
    return-void
.end method


# virtual methods
.method public getBottomSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCornerType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    return v0
.end method

.method public getSingleSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lyi/widget/RoundCornerListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 83
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 85
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 86
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 87
    .local v3, y:I
    invoke-virtual {p0, v2, v3}, Lyi/widget/RoundCornerListView;->pointToPosition(II)I

    move-result v1

    .line 88
    .local v1, itemnum:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 92
    iget v4, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 105
    :pswitch_1
    if-nez v1, :cond_2

    .line 106
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {p0}, Lyi/widget/RoundCornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 95
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 116
    :pswitch_3
    if-nez v1, :cond_4

    .line 117
    invoke-virtual {p0}, Lyi/widget/RoundCornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    .line 118
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0}, Lyi/widget/RoundCornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    .line 127
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 131
    :cond_5
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCornerSelector(III)V
    .locals 4
    .parameter "topResID"
    .parameter "bottomResID"
    .parameter "singleResID"

    .prologue
    .line 160
    invoke-virtual {p0}, Lyi/widget/RoundCornerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lyi/widget/RoundCornerListView;->setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    return-void
.end method

.method public setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "topSel"
    .parameter "bottomSel"
    .parameter "singleSel"

    .prologue
    .line 166
    iput-object p1, p0, Lyi/widget/RoundCornerListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 167
    iput-object p2, p0, Lyi/widget/RoundCornerListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 168
    iput-object p3, p0, Lyi/widget/RoundCornerListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    .line 169
    return-void
.end method

.method public setCornerType(I)V
    .locals 1
    .parameter "cornerType"

    .prologue
    .line 148
    iput p1, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    .line 150
    iget v0, p0, Lyi/widget/RoundCornerListView;->mCornerType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lyi/widget/RoundCornerListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lyi/widget/RoundCornerListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_0
    return-void
.end method
