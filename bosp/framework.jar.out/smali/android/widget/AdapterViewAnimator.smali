.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_SHOW:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 64
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 69
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 75
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 81
    iput v5, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 96
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 101
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 107
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 127
    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 132
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    .line 138
    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 144
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 145
    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 156
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 180
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 184
    .local v2, resource:I
    if-lez v2, :cond_0

    .line 185
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 190
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 191
    if-lez v2, :cond_1

    .line 192
    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 197
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 199
    .local v1, flag:Z
    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 201
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    .line 207
    return-void

    .line 187
    .end local v1           #flag:Z
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/AdapterViewAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method private addChild(Landroid/view/View;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 637
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v1}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 639
    const-string v1, "RemoteViewAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChild: child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v1, v4, :cond_1

    .line 647
    :cond_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 648
    .local v0, measureSpec:I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    .line 650
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    .line 652
    .end local v0           #measureSpec:I
    :cond_1
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 3
    .parameter "child"

    .prologue
    .line 408
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 409
    .local v1, vm:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 413
    .end local v1           #vm:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initViewAnimator()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 214
    return-void
.end method

.method private measureChildren()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 754
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v3

    .line 755
    .local v3, count:I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 756
    .local v2, childWidth:I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 758
    .local v1, childHeight:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 759
    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, child:Landroid/view/View;
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 758
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 763
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 5
    .parameter "whichChild"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 307
    const-string v1, "RemoteViewAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayedChild: whichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mWhichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",window size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",animate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mViewsMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mPreviousViews = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 313
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 314
    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 319
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 321
    .local v0, hasFocus:Z
    :goto_2
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 322
    if-eqz v0, :cond_1

    .line 324
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    .line 327
    .end local v0           #hasFocus:Z
    :cond_1
    return-void

    .line 314
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 315
    :cond_3
    if-gez p1, :cond_0

    .line 316
    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v0, v2

    .line 319
    goto :goto_2
.end method


# virtual methods
.method public advance()V
    .locals 0

    .prologue
    .line 1153
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 1154
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "relativeIndex"

    .prologue
    .line 337
    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 664
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 667
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 668
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    .prologue
    .line 810
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 811
    .local v0, dataChanged:Z
    if-eqz v0, :cond_0

    .line 812
    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 844
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    .line 845
    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1
    .parameter "numVisibleViews"
    .parameter "activeOffset"

    .prologue
    .line 250
    add-int/lit8 v0, p1, -0x1

    if-le p2, v0, :cond_0

    .line 253
    :cond_0
    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    .line 254
    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    .line 255
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 257
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 260
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 418
    .local v0, currentLp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_0

    .line 419
    move-object v1, v0

    .line 422
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1105
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    .prologue
    .line 1163
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1029
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 283
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 284
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    return-object v0

    .line 283
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 289
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 290
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    return-object v0

    .line 289
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    goto :goto_0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 3
    .parameter "relativeIndex"

    .prologue
    .line 375
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    .line 376
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 377
    .local v0, i:I
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 381
    .end local v0           #i:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getWindowSize()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 393
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 395
    .local v0, adapterCount:I
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 403
    .end local v0           #adapterCount:I
    :cond_0
    :goto_0
    return v0

    .line 397
    .restart local v0       #adapterCount:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    .line 398
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v0, v1

    goto :goto_0

    .line 403
    .end local v0           #adapterCount:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 660
    return-void
.end method

.method modulo(II)I
    .locals 1
    .parameter "pos"
    .parameter "size"

    .prologue
    .line 361
    if-lez p2, :cond_0

    .line 362
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 849
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 851
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v2

    .line 852
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 853
    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 855
    .local v0, child:Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 856
    .local v3, childRight:I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 858
    .local v1, childBottom:I
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 852
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 860
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBottom:I
    .end local v3           #childRight:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x100

    const/4 v9, -0x1

    const/high16 v10, -0x8000

    const/4 v7, 0x0

    .line 767
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 768
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 769
    .local v3, heightSpecSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 770
    .local v5, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 772
    .local v2, heightSpecMode:I
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v8, v9, :cond_2

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v8, v9, :cond_2

    const/4 v0, 0x1

    .line 777
    .local v0, haveChildRefSize:Z
    :goto_0
    if-nez v2, :cond_4

    .line 778
    if-eqz v0, :cond_3

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int v3, v8, v9

    .line 791
    :cond_0
    :goto_1
    if-nez v5, :cond_7

    .line 792
    if-eqz v0, :cond_6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int v6, v7, v8

    .line 805
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    .line 806
    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    .line 807
    return-void

    .end local v0           #haveChildRefSize:Z
    :cond_2
    move v0, v7

    .line 772
    goto :goto_0

    .restart local v0       #haveChildRefSize:Z
    :cond_3
    move v3, v7

    .line 778
    goto :goto_1

    .line 780
    :cond_4
    if-ne v2, v10, :cond_0

    .line 781
    if-eqz v0, :cond_0

    .line 782
    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int v1, v8, v9

    .line 783
    .local v1, height:I
    if-le v1, v3, :cond_5

    .line 784
    or-int/2addr v3, v11

    goto :goto_1

    .line 786
    :cond_5
    move v3, v1

    goto :goto_1

    .end local v1           #height:I
    :cond_6
    move v6, v7

    .line 792
    goto :goto_2

    .line 794
    :cond_7
    if-ne v2, v10, :cond_1

    .line 795
    if-eqz v0, :cond_1

    .line 796
    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int v4, v7, v8

    .line 797
    .local v4, width:I
    if-le v4, v6, :cond_8

    .line 798
    or-int/2addr v6, v11

    goto :goto_2

    .line 800
    :cond_8
    move v6, v4

    goto :goto_2
.end method

.method public onRemoteAdapterConnected()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 1112
    const-string v1, "RemoteViewAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteAdapterConnected: mRemoteViewsAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mDeferNotifyDataSetChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eq v1, v2, :cond_2

    .line 1117
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1119
    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1121
    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1125
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    if-le v1, v4, :cond_1

    .line 1126
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1127
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 1134
    :cond_1
    :goto_0
    return v0

    .line 1130
    :cond_2
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_1

    .line 1131
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 1146
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 912
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    .line 913
    .local v0, ss:Landroid/widget/AdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 918
    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 924
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    .line 925
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 906
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 907
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 682
    .local v0, action:I
    const/4 v1, 0x0

    .line 683
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 750
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 685
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 687
    .local v3, v:Landroid/view/View;
    const-string v5, "RemoteViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent touch down: mCurrentWindowStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentWindowEnd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",v = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz v3, :cond_0

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v10}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 693
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    .line 694
    new-instance v5, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v5, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 696
    :cond_1
    iput v9, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    .line 697
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 706
    .end local v3           #v:Landroid/view/View;
    :pswitch_2
    const-string v5, "RemoteViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent touch up: mCurrentWindowStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentWindowEnd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v9, :cond_3

    .line 711
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 712
    .restart local v3       #v:Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    .line 713
    .local v4, viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_3

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v10}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 715
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 716
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 717
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 719
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 720
    new-instance v5, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v5, p0, v3, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    const/4 v1, 0x1

    .line 739
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #v:Landroid/view/View;
    .end local v4           #viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_3
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto/16 :goto_0

    .line 743
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 744
    .restart local v3       #v:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 745
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 747
    :cond_4
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto/16 :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 8

    .prologue
    .line 426
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_1

    .line 451
    :cond_0
    return-void

    .line 428
    :cond_1
    const-string v5, "RemoteViewAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshChildren: mCurrentWindowStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentWindowEnd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",adapter count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",child count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mViewsMap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mPreviousViews = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .local v2, i:I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v2, v5, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 437
    .local v3, index:I
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    .line 439
    .local v0, adapterCount:I
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v2, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 441
    .local v4, updatedChild:Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 444
    .local v1, fl:Landroid/widget/FrameLayout;
    if-eqz v4, :cond_2

    .line 446
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 447
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 434
    .end local v1           #fl:Landroid/widget/FrameLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v3, 0x0

    .line 1039
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1043
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 1044
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    .line 1046
    const-string v0, "RemoteViewAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdapter: adapter count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mWhichChild = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 1051
    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 1052
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1053
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    .line 1055
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    .line 1056
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 1057
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, v3}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 1058
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 1024
    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    .line 1025
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .parameter "whichChild"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 302
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter "inAnimation"

    .prologue
    .line 963
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 964
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 1000
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 1001
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter "outAnimation"

    .prologue
    .line 987
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 988
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 1013
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 1014
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1072
    const-string v2, "RemoteViewAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteViewsAdapter: intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mRemoteViewsAdapter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mWhichChild = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 1077
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1078
    .local v0, fcNew:Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1080
    .local v1, fcOld:Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1087
    .end local v0           #fcNew:Landroid/content/Intent$FilterComparison;
    .end local v1           #fcOld:Landroid/content/Intent$FilterComparison;
    :goto_0
    return-void

    .line 1084
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1086
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1091
    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 1092
    return-void
.end method

.method public showNext()V
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 351
    return-void
.end method

.method showOnly(IZ)V
    .locals 32
    .parameter "childIndex"
    .parameter "animate"

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v4, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v11

    .line 477
    .local v11, adapterCount:I
    if-eqz v11, :cond_0

    .line 480
    const-string v4, "RemoteViewAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "showOnly start: childIndex = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mCurrentWindowStart = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mCurrentWindowEnd = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mWhichChild = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",animate = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",window size = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mActiveOffset = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",childCount = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mViewsMap = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mPreviousViews = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",this = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v28, v0

    .line 492
    .local v28, viewToRemove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->clearAnimation()V

    .line 494
    move-object/from16 v0, v28

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object/from16 v26, v28

    .line 495
    check-cast v26, Landroid/view/ViewGroup;

    .line 496
    .local v26, vg:Landroid/view/ViewGroup;
    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 500
    .end local v26           #vg:Landroid/view/ViewGroup;
    :cond_2
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 487
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 504
    .end local v28           #viewToRemove:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 505
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v20, p1, v4

    .line 506
    .local v20, newWindowStartUnbounded:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v4

    add-int v4, v4, v20

    add-int/lit8 v18, v4, -0x1

    .line 507
    .local v18, newWindowEndUnbounded:I
    const/4 v4, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 508
    .local v19, newWindowStart:I
    add-int/lit8 v4, v11, -0x1

    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 521
    .local v17, newWindowEnd:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v4, :cond_4

    .line 522
    move/from16 v19, v20

    .line 523
    move/from16 v17, v18

    .line 525
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v24

    .line 526
    .local v24, rangeStart:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v23

    .line 528
    .local v23, rangeEnd:I
    const/16 v29, 0x0

    .line 529
    .local v29, wrap:Z
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 530
    const/16 v29, 0x1

    .line 537
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 538
    .local v15, index:Ljava/lang/Integer;
    const/16 v25, 0x0

    .line 539
    .local v25, remove:Z
    if-nez v29, :cond_9

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v24

    if-lt v4, v0, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_9

    .line 540
    :cond_7
    const/16 v25, 0x1

    .line 550
    :cond_8
    :goto_3
    if-eqz v25, :cond_6

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v22, v0

    .line 552
    .local v22, previousView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v21, v0

    .line 554
    .local v21, oldRelativeIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_2

    .line 541
    .end local v21           #oldRelativeIndex:I
    .end local v22           #previousView:Landroid/view/View;
    :cond_9
    if-eqz v29, :cond_8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v24

    if-ge v4, v0, :cond_8

    .line 542
    const/16 v25, 0x1

    goto :goto_3

    .line 568
    .end local v15           #index:Ljava/lang/Integer;
    .end local v25           #remove:Z
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v19

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_11

    .line 571
    :cond_b
    move/from16 v12, v19

    :goto_4
    move/from16 v0, v17

    if-gt v12, v0, :cond_10

    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v15

    .line 575
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v21, v0

    .line 580
    .restart local v21       #oldRelativeIndex:I
    :goto_5
    sub-int v7, v12, v20

    .line 585
    .local v7, newRelativeIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v14, 0x1

    .line 592
    .local v14, inOldRange:Z
    :goto_6
    if-eqz v14, :cond_e

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v27, v0

    .line 594
    .local v27, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v7, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 596
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v27

    move/from16 v3, p2

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 619
    .end local v27           #view:Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v4, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 571
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 578
    .end local v7           #newRelativeIndex:I
    .end local v14           #inOldRange:Z
    .end local v21           #oldRelativeIndex:I
    :cond_c
    const/16 v21, -0x1

    .restart local v21       #oldRelativeIndex:I
    goto :goto_5

    .line 585
    .restart local v7       #newRelativeIndex:I
    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    .line 601
    .restart local v14       #inOldRange:Z
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v8

    .line 602
    .local v8, adapterPosition:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-interface {v4, v8, v5, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 603
    .local v16, newView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4, v8}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v9

    .line 607
    .local v9, itemId:J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v6

    .line 610
    .local v6, fl:Landroid/widget/FrameLayout;
    if-eqz v16, :cond_f

    .line 611
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 613
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    new-instance v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 616
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 617
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v7, v6, v1}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_7

    .line 621
    .end local v6           #fl:Landroid/widget/FrameLayout;
    .end local v7           #newRelativeIndex:I
    .end local v8           #adapterPosition:I
    .end local v9           #itemId:J
    .end local v14           #inOldRange:Z
    .end local v15           #index:I
    .end local v16           #newView:Landroid/view/View;
    .end local v21           #oldRelativeIndex:I
    :cond_10
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    .line 622
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    .line 623
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 625
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 626
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    .line 628
    const-string v4, "RemoteViewAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "showOnly end: childIndex = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mCurrentWindowStart = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mCurrentWindowEnd = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",window size = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mActiveOffset = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",childCount = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mPreviousViews = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v30, ",mViewsMap = "

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public showPrevious()V
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 358
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 655
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 656
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "view"
    .parameter "animate"

    .prologue
    const/4 v0, -0x1

    .line 273
    if-ne p1, v0, :cond_1

    .line 274
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    if-ne p2, v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
