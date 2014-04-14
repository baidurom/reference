.class Lyi/support/v1/menu/HybridMenu$ContentMask$2;
.super Lyi/support/v1/utils/Animatable$Alpha;
.source "HybridMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenu$ContentMask;->fadeIn()V
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
    .line 303
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$2;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

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
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$2;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    #getter for: Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->access$200(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 307
    return-void
.end method
