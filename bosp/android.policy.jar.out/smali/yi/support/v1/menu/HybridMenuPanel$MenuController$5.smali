.class Lyi/support/v1/menu/HybridMenuPanel$MenuController$5;
.super Lyi/support/v1/utils/Animatable$Vertical;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$MenuController;->pullUpMenu(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FFFJFLjava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$5;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iput-object p8, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$5;->val$callback:Ljava/lang/Runnable;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/utils/Animatable$Vertical;-><init>(FFFJF)V

    return-void
.end method


# virtual methods
.method protected onEnd()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$5;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$5;->val$callback:Ljava/lang/Runnable;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->handleMenuEnding(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$2000(Lyi/support/v1/menu/HybridMenuPanel$MenuController;Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method
