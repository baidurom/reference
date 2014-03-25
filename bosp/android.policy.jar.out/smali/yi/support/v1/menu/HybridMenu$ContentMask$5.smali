.class Lyi/support/v1/menu/HybridMenu$ContentMask$5;
.super Lyi/support/v1/utils/Animatable$Alpha;
.source "HybridMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenu$ContentMask;->hideBlurMask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu$ContentMask;FFFJ)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 353
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$5;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJ)V

    return-void
.end method


# virtual methods
.method protected onEnd()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$5;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 357
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$5;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 358
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$5;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    return-void
.end method
