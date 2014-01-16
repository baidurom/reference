.class Landroid/widget/MagnifierController;
.super Ljava/lang/Object;
.source "MagnifierController.java"


# static fields
.field public static final CENTER:I = 0x1

.field private static final DBG:Z = true

.field public static final END:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MagnifierController"

.field public static final START:I


# instance fields
.field private final DELAY:I

.field protected mBounds:Landroid/graphics/Rect;

.field protected mContainer:Landroid/view/View;

.field protected mContainerHeight:I

.field protected mContainerWidth:I

.field protected mCursorType:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHider:Ljava/lang/Runnable;

.field protected mParent:Landroid/widget/TextView;

.field protected mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 6
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/MagnifierController;->DELAY:I

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/widget/MagnifierController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 68
    new-instance v0, Landroid/widget/MagnifierController$1;

    invoke-direct {v0, p0}, Landroid/widget/MagnifierController$1;-><init>(Landroid/widget/MagnifierController;)V

    iput-object v0, p0, Landroid/widget/MagnifierController;->mHider:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    .line 43
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, #attr@textSelectHandleWindowStyle#t

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 45
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 46
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 47
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 48
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 49
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 50
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 51
    return-void
.end method

.method private clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 241
    if-gt p1, p2, :cond_1

    .line 242
    add-int/lit8 p1, p2, 0x1

    .line 246
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 243
    .restart local p1
    :cond_1
    if-lt p1, p3, :cond_0

    .line 244
    add-int/lit8 p1, p3, -0x1

    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 220
    iget-object v2, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 221
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 222
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 224
    iget-object v2, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 225
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 226
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 227
    return-void
.end method

.method private printBounds()V
    .locals 3

    .prologue
    .line 231
    const-string v0, "MagnifierController"

    const-string v1, "==============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "MagnifierController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "MagnifierController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "MagnifierController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v0, "MagnifierController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds.bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "MagnifierController"

    const-string v1, "==============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MagnifierController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
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

    .line 180
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 181
    .local v2, handle:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 183
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget v6, p0, Landroid/widget/MagnifierController;->mCursorType:I

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x28

    sub-int v4, v6, v7

    .line 184
    .local v4, lineTop:I
    :goto_0
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    iget v6, p0, Landroid/widget/MagnifierController;->mCursorType:I

    if-eq v6, v8, :cond_4

    move v6, p3

    :goto_1
    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 185
    .local v3, lineBottom:I
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    const/high16 v7, 0x3f80

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_6

    .line 186
    :cond_0
    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x4080

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 187
    .local v5, offsetToBaseLine:I
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget v7, p0, Landroid/widget/MagnifierController;->mCursorType:I

    if-eq v7, v8, :cond_5

    .end local p3
    :goto_2
    invoke-virtual {v6, p3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    add-int v3, v6, v5

    .line 192
    .end local v5           #offsetToBaseLine:I
    :goto_3
    new-array v0, v8, [I

    .line 193
    .local v0, coords:[I
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 195
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    iget v8, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 196
    iget-object v7, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget v6, p0, Landroid/widget/MagnifierController;->mContainerHeight:I

    sub-int v6, v4, v6

    :goto_4
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 198
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 199
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/MagnifierController;->mContainerHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 201
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Landroid/widget/MagnifierController;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 203
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    aget v8, v0, v10

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 204
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    aget v8, v0, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 206
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aget v7, v0, v10

    if-ge v6, v7, :cond_1

    .line 207
    const-string v6, "MagnifierController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "test1 mBounds.left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    aget v7, v0, v10

    iget v8, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 209
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 212
    :cond_1
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aget v7, v0, v10

    iget-object v8, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getRight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 213
    const-string v6, "MagnifierController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "test2 mBounds.left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    aget v7, v0, v10

    iget-object v8, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getRight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 215
    iget-object v6, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 217
    :cond_2
    return-void

    .line 183
    .end local v0           #coords:[I
    .end local v3           #lineBottom:I
    .end local v4           #lineTop:I
    .restart local p3
    :cond_3
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    goto/16 :goto_0

    .restart local v4       #lineTop:I
    :cond_4
    move v6, p4

    .line 184
    goto/16 :goto_1

    .restart local v3       #lineBottom:I
    .restart local v5       #offsetToBaseLine:I
    :cond_5
    move p3, p4

    .line 187
    goto/16 :goto_2

    .line 189
    .end local v5           #offsetToBaseLine:I
    :cond_6
    iget-object v6, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget v7, p0, Landroid/widget/MagnifierController;->mCursorType:I

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

    .line 196
    .end local p3
    .restart local v0       #coords:[I
    :cond_8
    iget v6, p0, Landroid/widget/MagnifierController;->mContainerHeight:I

    add-int/2addr v6, v3

    goto/16 :goto_4
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 83
    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MagnifierController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method protected getEndLine()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->getStartLine()I

    move-result v0

    return v0
.end method

.method protected getOffsetCenter()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Landroid/widget/MagnifierController;->mCursorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method protected getStartLine()I
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/MagnifierController;->mCursorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method public hideDelayed()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MagnifierController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    iget-object v0, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MagnifierController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

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
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/internal/widget/MagnifierView;

    iget-object v1, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MagnifierView;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    .line 60
    :cond_0
    iget-object v0, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MagnifierView;

    invoke-virtual {p0}, Landroid/widget/MagnifierController;->getOffsetCenter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MagnifierView;->updateMagnifierPosition(I)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public show(I)V
    .locals 6
    .parameter "cursorType"

    .prologue
    const/4 v3, -0x2

    .line 97
    iget-object v1, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mag_text"

    invoke-static {v1, v2}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    iput p1, p0, Landroid/widget/MagnifierController;->mCursorType:I

    .line 100
    iget-object v1, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->setupView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 107
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v1, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/MagnifierController;->updateLocation(Z)V

    .line 112
    iget-object v1, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public update(I)V
    .locals 5
    .parameter "cursorType"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MagnifierView;

    invoke-virtual {p0}, Landroid/widget/MagnifierController;->getOffsetCenter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MagnifierView;->updateMagnifierPosition(I)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/MagnifierController;->updateLocation(Z)V

    .line 90
    iget-object v0, p0, Landroid/widget/MagnifierController;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    iget v4, p0, Landroid/widget/MagnifierController;->mContainerHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/MagnifierController;->show(I)V

    goto :goto_0
.end method

.method protected updateLocation(Z)V
    .locals 13
    .parameter "top"

    .prologue
    const/high16 v10, 0x4000

    const/4 v7, 0x0

    const/4 v9, -0x2

    .line 140
    iget-object v8, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    if-nez v8, :cond_0

    .line 177
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Landroid/widget/MagnifierController;->recordScreenSize()V

    .line 147
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 148
    .local v6, widthMeasureSpec:I
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 149
    .local v3, heightMeasureSpec:I
    iget-object v8, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    invoke-virtual {v8, v6, v3}, Landroid/view/View;->measure(II)V

    .line 150
    iget-object v8, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iput v8, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    .line 151
    iget-object v8, p0, Landroid/widget/MagnifierController;->mContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Landroid/widget/MagnifierController;->mContainerHeight:I

    .line 153
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->getStartLine()I

    move-result v4

    .line 154
    .local v4, startLine:I
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->getEndLine()I

    move-result v1

    .line 155
    .local v1, endLine:I
    invoke-virtual {p0}, Landroid/widget/MagnifierController;->getOffsetCenter()I

    move-result v0

    .line 157
    .local v0, center:I
    invoke-direct {p0, p1, v0, v4, v1}, Landroid/widget/MagnifierController;->updateBounds(ZIII)V

    .line 160
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 161
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 163
    iget-object v8, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/MagnifierController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, p0, Landroid/widget/MagnifierController;->mContainerHeight:I

    sub-int/2addr v10, v11

    invoke-direct {p0, v8, v9, v10}, Landroid/widget/MagnifierController;->clamp(III)I

    move-result v5

    .line 164
    .local v5, tmp:I
    iget-object v8, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-eq v5, v8, :cond_1

    .line 165
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 166
    :goto_1
    invoke-direct {p0, p1, v0, v4, v1}, Landroid/widget/MagnifierController;->updateBounds(ZIII)V

    .line 167
    iget-object v8, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/MagnifierController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v12, p0, Landroid/widget/MagnifierController;->mContainerHeight:I

    sub-int/2addr v11, v12

    invoke-direct {p0, v9, v10, v11}, Landroid/widget/MagnifierController;->clamp(III)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 171
    :cond_1
    iget-object v8, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/MagnifierController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, p0, Landroid/widget/MagnifierController;->mContainerWidth:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v7, v9}, Landroid/widget/MagnifierController;->clamp(III)I

    move-result v5

    .line 172
    iget-object v7, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-eq v7, v5, :cond_2

    .line 173
    iget-object v7, p0, Landroid/widget/MagnifierController;->mBounds:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 176
    :cond_2
    invoke-direct {p0}, Landroid/widget/MagnifierController;->printBounds()V

    goto/16 :goto_0

    :cond_3
    move p1, v7

    .line 165
    goto :goto_1
.end method
