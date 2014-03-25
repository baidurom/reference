.class Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 613
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iget-object v1, v1, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$4200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    move-result-object v1

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->getHeight()I
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->access$600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)I

    move-result v1

    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iget-object v2, v2, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$3100(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    move-result-object v2

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 614
    .local v0, from:F
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    new-instance v2, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1$1;

    invoke-direct {v2, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;)V

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuController;->pullUpMenu(FLjava/lang/Runnable;)V
    invoke-static {v1, v0, v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->access$4300(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FLjava/lang/Runnable;)V

    .line 620
    return-void
.end method
