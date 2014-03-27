.class Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$2;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 866
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->doSetHeight(I)Z
    invoke-static {v1, v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$4800(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;I)Z

    .line 867
    return-void
.end method
