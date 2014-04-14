.class public Lcom/android/internal/widget/RecycleFilletListView;
.super Lcom/android/internal/app/AlertController$RecycleListView;
.source "RecycleFilletListView.java"


# static fields
.field public static final BOTTOM_ROUND_CORNER:I = 0x2

.field public static final NO_ROUND_CORNER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecycleFilletListView"

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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecycleFilletListView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecycleFilletListView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, resource:Landroid/content/res/Resources;
    const v1, #drawable@cld_list_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    .line 50
    const v1, #drawable@cld_list_top_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 51
    const v1, #drawable@cld_list_bottom_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 52
    const v1, #drawable@cld_list_single_selector_baidu_light#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 54
    return-void
.end method


# virtual methods
.method public getBottomSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCornerType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    return v0
.end method

.method public getSingleSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTopSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 59
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 61
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 62
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 63
    .local v3, y:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RecycleFilletListView;->pointToPosition(II)I

    move-result v1

    .line 64
    .local v1, itemnum:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 68
    iget v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 81
    :pswitch_1
    if-nez v1, :cond_2

    .line 82
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 71
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 92
    :pswitch_3
    if-nez v1, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    .line 94
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    .line 103
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 107
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 68
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
    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/RecycleFilletListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method public setCornerSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "topSel"
    .parameter "bottomSel"
    .parameter "singleSel"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mTopSelector:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object p2, p0, Lcom/android/internal/widget/RecycleFilletListView;->mBottomSelector:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p3, p0, Lcom/android/internal/widget/RecycleFilletListView;->mSingleSelector:Landroid/graphics/drawable/Drawable;

    .line 145
    return-void
.end method

.method public setCornerType(I)V
    .locals 1
    .parameter "cornerType"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    .line 126
    iget v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mCornerType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/RecycleFilletListView;->mNormalSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    return-void
.end method
