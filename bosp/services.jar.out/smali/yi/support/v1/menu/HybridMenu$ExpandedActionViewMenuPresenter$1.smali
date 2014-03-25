.class Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$1;
.super Ljava/lang/Object;
.source "HybridMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$1;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 453
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$1;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/yi/internal/view/menu/MenuItemImpl;

    .line 454
    .local v0, item:Lcom/yi/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/yi/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 456
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter$1;->this$1:Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lyi/support/v1/menu/HybridMenu$ExpandedActionViewMenuPresenter;->this$0:Lyi/support/v1/menu/HybridMenu;

    #calls: Lyi/support/v1/menu/HybridMenu;->onCollapseItemActionView()V
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenu;->access$600(Lyi/support/v1/menu/HybridMenu;)V

    .line 458
    :cond_0
    return-void
.end method
