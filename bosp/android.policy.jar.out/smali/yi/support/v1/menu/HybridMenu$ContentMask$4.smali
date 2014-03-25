.class Lyi/support/v1/menu/HybridMenu$ContentMask$4;
.super Lyi/support/v1/blend/BlendService$Observer;
.source "HybridMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenu$ContentMask;->showBlurMask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SCALE_FACTOR:F = 0.5f


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu$ContentMask;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 328
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$4;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    invoke-direct {p0, p2}, Lyi/support/v1/blend/BlendService$Observer;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 333
    const/high16 v0, 0x3f00

    return v0
.end method

.method public onBlendFinished(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bmp"

    .prologue
    const/4 v1, 0x0

    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$4;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$4;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$4;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v6

    new-instance v0, Lyi/support/v1/utils/Animatable$Alpha;

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$4;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    iget-object v4, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$4;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;
    invoke-static {v4}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v4

    #calls: Lyi/support/v1/menu/HybridMenu$ContentMask;->getAnimationAlpha(Landroid/view/View;F)F
    invoke-static {v3, v4, v1}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$400(Lyi/support/v1/menu/HybridMenu$ContentMask;Landroid/view/View;F)F

    move-result v3

    const-wide/16 v4, 0x2ee

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    :cond_0
    return-void
.end method
