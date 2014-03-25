.class Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;

.field final synthetic val$fullScreen:Z

.field final synthetic val$paddingBottom:I


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;

    iput p2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->val$paddingBottom:I

    iput-boolean p3, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->val$fullScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 483
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;

    iget-object v2, v2, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mEnabledWhenSoftInputShown:Z
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->access$3700(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;

    iget-object v2, v2, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    iget-object v0, v2, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    .line 485
    .local v0, hybridMenu:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 486
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->val$paddingBottom:I

    if-eq v2, v3, :cond_0

    .line 487
    iget v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->val$paddingBottom:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .end local v0           #hybridMenu:Landroid/view/View;
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;

    iget-object v2, v2, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->mPlaceHolder:Landroid/view/View;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->access$3600(Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;)Landroid/view/View;

    move-result-object v3

    iget-boolean v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder$2$1;->val$fullScreen:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method
