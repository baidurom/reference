.class Lyi/support/v1/menu/HybridMenuPanel$ActionController;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionController"
.end annotation


# instance fields
.field private mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method private constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;Lyi/support/v1/menu/HybridMenuPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;-><init>(Lyi/support/v1/menu/HybridMenuPanel;)V

    return-void
.end method

.method static synthetic access$1300(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 503
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->reset()V

    return-void
.end method

.method static synthetic access$1400(Lyi/support/v1/menu/HybridMenuPanel$ActionController;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->set(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$2200(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 503
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->hide()V

    return-void
.end method

.method static synthetic access$2500(Lyi/support/v1/menu/HybridMenuPanel$ActionController;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fade(F)V

    return-void
.end method

.method static synthetic access$2700(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lyi/support/v1/menu/HybridMenuPanel$ActionController;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fadeOut(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4400(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 503
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fadeIn()V

    return-void
.end method

.method private fade(F)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 538
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/ActionMenuView;->fade(F)V

    .line 541
    :cond_0
    return-void
.end method

.method private fadeIn()V
    .locals 1

    .prologue
    .line 522
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3100(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    move-result-object v0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->isTransitioning()Z
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$4000(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/ActionMenuView;->fadeIn()V

    .line 527
    :cond_0
    return-void
.end method

.method private fadeOut(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 530
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p1}, Lcom/yi/internal/view/menu/ActionMenuView;->fadeOut(Ljava/lang/Runnable;)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private hide()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/ActionMenuView;->hide()V

    .line 519
    :cond_0
    return-void
.end method

.method private isAvailable()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible()Z
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/yi/internal/view/menu/ActionMenuView;->reset()V

    .line 547
    :cond_0
    return-void
.end method

.method private set(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "actionMenu"

    .prologue
    .line 508
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x4020026

    #calls: Lyi/support/v1/menu/HybridMenuPanel;->removeAndAddView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    invoke-static {v0, p1, v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$3900(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yi/internal/view/menu/ActionMenuView;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->mActionMenuView:Lcom/yi/internal/view/menu/ActionMenuView;

    .line 509
    return-void
.end method
