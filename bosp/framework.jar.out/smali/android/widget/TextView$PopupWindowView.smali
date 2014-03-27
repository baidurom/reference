.class Landroid/widget/TextView$PopupWindowView;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupWindowView"
.end annotation


# instance fields
.field private final DELAY:I

.field protected mBounds:Landroid/graphics/Rect;

.field protected mContainer:Landroid/view/View;

.field protected mContainerHeight:I

.field protected mContainerWidth:I

.field protected mCursorType:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHider:Ljava/lang/Runnable;

.field protected mParent:Landroid/view/View;

.field private mVisibleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected mWindow:Landroid/widget/PopupWindow;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    .line 11645
    iput-object p1, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11631
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 11633
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/TextView$PopupWindowView;->DELAY:I

    .line 11641
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    .line 11643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mVisibleList:Ljava/util/ArrayList;

    .line 11655
    new-instance v0, Landroid/widget/TextView$PopupWindowView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$PopupWindowView$1;-><init>(Landroid/widget/TextView$PopupWindowView;)V

    iput-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mHider:Ljava/lang/Runnable;

    .line 11646
    iput-object p1, p0, Landroid/widget/TextView$PopupWindowView;->mParent:Landroid/view/View;

    .line 11647
    new-instance v0, Landroid/widget/PopupWindow;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$7900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    .line 11648
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #color@transparent#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11649
    return-void
.end method

.method private clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 11843
    if-gt p1, p2, :cond_1

    .line 11844
    add-int/lit8 p1, p2, 0x1

    .line 11848
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 11845
    .restart local p1
    :cond_1
    if-lt p1, p3, :cond_0

    .line 11846
    add-int/lit8 p1, p3, -0x1

    goto :goto_0
.end method

.method private printBounds()V
    .locals 3

    .prologue
    .line 11832
    const-string v0, "TextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11833
    const-string v0, "TextView"

    const-string v1, "==============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11834
    const-string v0, "TextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11835
    const-string v0, "TextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11836
    const-string v0, "TextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11837
    const-string v0, "TextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11838
    const-string v0, "TextView"

    const-string v1, "==============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11840
    :cond_0
    return-void
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 11712
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$8100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 11713
    return-void
.end method

.method private updateBounds(ZIII)V
    .locals 11
    .parameter "top"
    .parameter "offset"
    .parameter "startLine"
    .parameter "endLine"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 11789
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/TextView;->access$8200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v7}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 11790
    .local v2, handle:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 11792
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget v6, p0, Landroid/widget/TextView$PopupWindowView;->mCursorType:I

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v6, v6, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x28

    sub-int v4, v6, v7

    .line 11793
    .local v4, lineTop:I
    :goto_0
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v7, v6, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView$PopupWindowView;->mCursorType:I

    if-eq v6, v8, :cond_4

    move v6, p3

    :goto_1
    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 11794
    .local v3, lineBottom:I
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpacingMult:F
    invoke-static {v6}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)F

    move-result v6

    const/high16 v7, 0x3f80

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpacingAdd:F
    invoke-static {v6}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_6

    .line 11795
    :cond_0
    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x4080

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 11796
    .local v5, offsetToBaseLine:I
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v6, v6, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v7, p0, Landroid/widget/TextView$PopupWindowView;->mCursorType:I

    if-eq v7, v8, :cond_5

    .end local p3
    :goto_2
    invoke-virtual {v6, p3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    add-int v3, v6, v5

    .line 11801
    .end local v5           #offsetToBaseLine:I
    :goto_3
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mTempCoords:[I

    .line 11802
    .local v0, coords:[I
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 11804
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    iget v8, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 11805
    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget v6, p0, Landroid/widget/TextView$PopupWindowView;->mContainerHeight:I

    sub-int v6, v4, v6

    :goto_4
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 11807
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 11808
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/TextView$PopupWindowView;->mContainerHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 11810
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    #calls: Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    invoke-static {v6, v7}, Landroid/widget/TextView;->access$8400(Landroid/widget/TextView;Landroid/graphics/Rect;)V

    .line 11812
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    aget v8, v0, v10

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 11813
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    aget v8, v0, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 11820
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aget v7, v0, v10

    if-ge v6, v7, :cond_1

    .line 11821
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    aget v7, v0, v10

    iget v8, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 11822
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 11825
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aget v7, v0, v10

    iget-object v8, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mRight:I
    invoke-static {v8}, Landroid/widget/TextView;->access$8500(Landroid/widget/TextView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mLeft:I
    invoke-static {v9}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 11826
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    aget v7, v0, v10

    iget-object v8, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mRight:I
    invoke-static {v8}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mLeft:I
    invoke-static {v9}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 11827
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 11829
    :cond_2
    return-void

    .line 11792
    .end local v0           #coords:[I
    .end local v3           #lineBottom:I
    .end local v4           #lineTop:I
    .restart local p3
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v6, v6, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, p4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    goto/16 :goto_0

    .restart local v4       #lineTop:I
    :cond_4
    move v6, p4

    .line 11793
    goto/16 :goto_1

    .restart local v3       #lineBottom:I
    .restart local v5       #offsetToBaseLine:I
    :cond_5
    move p3, p4

    .line 11796
    goto/16 :goto_2

    .line 11798
    .end local v5           #offsetToBaseLine:I
    :cond_6
    iget-object v6, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v6, v6, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v7, p0, Landroid/widget/TextView$PopupWindowView;->mCursorType:I

    if-eq v7, v8, :cond_7

    .end local p3
    :goto_5
    invoke-virtual {v6, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    goto/16 :goto_3

    .restart local p3
    :cond_7
    move p3, p4

    goto :goto_5

    .line 11805
    .end local p3
    .restart local v0       #coords:[I
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    goto/16 :goto_4
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 11667
    invoke-virtual {p0}, Landroid/widget/TextView$PopupWindowView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11668
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11670
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11671
    return-void
.end method

.method protected getEndLine()I
    .locals 2

    .prologue
    .line 11742
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    return v0
.end method

.method protected getOffsetCenter()I
    .locals 8

    .prologue
    .line 11718
    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 11719
    .local v5, start:I
    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 11721
    .local v1, end:I
    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 11722
    .local v6, startLine:I
    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 11724
    .local v2, endLine:I
    if-ne v6, v2, :cond_1

    .line 11725
    add-int v7, v5, v1

    div-int/lit8 v0, v7, 0x2

    .line 11734
    .local v0, center:I
    :cond_0
    :goto_0
    return v0

    .line 11727
    .end local v0           #center:I
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 11728
    .local v4, lastOffset:I
    iget-object v7, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 11729
    .local v3, firstOffset:I
    add-int v7, v3, v4

    div-int/lit8 v0, v7, 0x2

    .line 11730
    .restart local v0       #center:I
    if-ge v0, v5, :cond_0

    .line 11731
    move v0, v5

    goto :goto_0
.end method

.method protected getStartLine()I
    .locals 2

    .prologue
    .line 11738
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    return v0
.end method

.method public hideDelayed()V
    .locals 4

    .prologue
    .line 11662
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11663
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11664
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 11652
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupView()Z
    .locals 1

    .prologue
    .line 11708
    const/4 v0, 0x0

    return v0
.end method

.method public show(I)V
    .locals 5
    .parameter "cursorType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 11674
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mag_text"

    invoke-static {v0, v1}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 11675
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11676
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mMagnifierController:Landroid/widget/TextView$MagnifierController;
    invoke-static {v0}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/widget/TextView$MagnifierController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$MagnifierController;->dismiss()V

    .line 11679
    :cond_0
    iput p1, p0, Landroid/widget/TextView$PopupWindowView;->mCursorType:I

    .line 11681
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11682
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11686
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView$PopupWindowView;->setupView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11702
    :goto_0
    return-void

    .line 11690
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 11691
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 11692
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 11693
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    const v1, #style@Animation.OptionsPanel#t

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 11694
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 11695
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 11696
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11697
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 11699
    invoke-virtual {p0, v2}, Landroid/widget/TextView$PopupWindowView;->updateLocation(Z)V

    .line 11701
    iget-object v0, p0, Landroid/widget/TextView$PopupWindowView;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$PopupWindowView;->mParent:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method protected updateLocation(Z)V
    .locals 14
    .parameter "top"

    .prologue
    const/high16 v11, 0x4000

    const/4 v8, 0x0

    const/4 v10, -0x2

    .line 11746
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    iget-object v9, v9, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v9, :cond_1

    .line 11785
    :cond_0
    :goto_0
    return-void

    .line 11750
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView$PopupWindowView;->recordScreenSize()V

    .line 11753
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 11754
    .local v7, widthMeasureSpec:I
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 11755
    .local v3, heightMeasureSpec:I
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    invoke-virtual {v9, v7, v3}, Landroid/view/View;->measure(II)V

    .line 11756
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    .line 11757
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->mContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$PopupWindowView;->mContainerHeight:I

    .line 11759
    invoke-virtual {p0}, Landroid/widget/TextView$PopupWindowView;->getStartLine()I

    move-result v5

    .line 11760
    .local v5, startLine:I
    invoke-virtual {p0}, Landroid/widget/TextView$PopupWindowView;->getEndLine()I

    move-result v1

    .line 11761
    .local v1, endLine:I
    invoke-virtual {p0}, Landroid/widget/TextView$PopupWindowView;->getOffsetCenter()I

    move-result v0

    .line 11763
    .local v0, center:I
    invoke-direct {p0, p1, v0, v5, v1}, Landroid/widget/TextView$PopupWindowView;->updateBounds(ZIII)V

    .line 11766
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11767
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 11769
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/TextView$PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v12, p0, Landroid/widget/TextView$PopupWindowView;->mContainerHeight:I

    sub-int/2addr v11, v12

    invoke-direct {p0, v9, v10, v11}, Landroid/widget/TextView$PopupWindowView;->clamp(III)I

    move-result v6

    .line 11770
    .local v6, tmp:I
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-eq v6, v9, :cond_2

    .line 11771
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 11772
    :goto_1
    invoke-direct {p0, p1, v0, v5, v1}, Landroid/widget/TextView$PopupWindowView;->updateBounds(ZIII)V

    .line 11773
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/TextView$PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v13, p0, Landroid/widget/TextView$PopupWindowView;->mContainerHeight:I

    sub-int/2addr v12, v13

    invoke-direct {p0, v10, v11, v12}, Landroid/widget/TextView$PopupWindowView;->clamp(III)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 11777
    :cond_2
    const/4 v4, 0x0

    .line 11780
    .local v4, shift:I
    iget-object v9, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/TextView$PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, p0, Landroid/widget/TextView$PopupWindowView;->mContainerWidth:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v9, v8, v10}, Landroid/widget/TextView$PopupWindowView;->clamp(III)I

    move-result v6

    .line 11781
    iget-object v8, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-eq v8, v6, :cond_0

    .line 11782
    iget-object v8, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v8

    .line 11783
    iget-object v8, p0, Landroid/widget/TextView$PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iput v6, v8, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .end local v4           #shift:I
    :cond_3
    move p1, v8

    .line 11771
    goto :goto_1
.end method
