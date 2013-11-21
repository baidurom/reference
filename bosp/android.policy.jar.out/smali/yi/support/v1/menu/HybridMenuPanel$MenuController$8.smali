.class Lyi/support/v1/menu/HybridMenuPanel$MenuController$8;
.super Lyi/support/v1/utils/Animatable$Alpha;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$MenuController;->pushDownMenu(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FFFJLjava/lang/Runnable;)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$8;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iput-object p7, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$8;->val$callback:Ljava/lang/Runnable;

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
    .line 740
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$8;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$8;->val$callback:Ljava/lang/Runnable;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->handleMenuEnding(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$2000(Lyi/support/v1/menu/HybridMenuPanel$MenuController;Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method
