.class Lcom/android/server/accessibility/ScreenMagnifier$Viewport$2;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier$Viewport;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;Landroid/view/animation/Interpolator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final mReusableResultRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)V
    .locals 1
    .parameter

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$2;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$2;->mReusableResultRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter "fraction"
    .parameter "fromFrame"
    .parameter "toFrame"

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$2;->mReusableResultRect:Landroid/graphics/Rect;

    .line 1520
    .local v0, result:Landroid/graphics/Rect;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1522
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1524
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1526
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1528
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1515
    check-cast p2, Landroid/graphics/Rect;

    .end local p2
    check-cast p3, Landroid/graphics/Rect;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$2;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
