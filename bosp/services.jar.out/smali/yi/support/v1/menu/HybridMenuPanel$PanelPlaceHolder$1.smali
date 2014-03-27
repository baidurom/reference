.class Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

.field final synthetic val$validHeight:I


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    iput p2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->val$validHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    iget v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->val$validHeight:I

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    #calls: Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->ensurePlaceHolder()V
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->access$3500(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->access$3600(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->access$3600(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->val$validHeight:I

    if-eq v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->access$3600(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->val$validHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->access$3600(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 445
    :cond_1
    return-void
.end method
