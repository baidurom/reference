.class Lyi/support/v1/menu/HybridMenuPanel$MenuController;
.super Lyi/support/v1/menu/HybridMenuPanel$PanelState;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuController"
.end annotation


# instance fields
.field private mListMenuView:Lcom/yi/internal/view/menu/ExpandedMenuView;

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 562
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    .line 563
    invoke-direct {p0, v0, v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelState;-><init>(ZZ)V

    .line 564
    return-void
.end method

.method static synthetic access$1500(Lyi/support/v1/menu/HybridMenuPanel$MenuController;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->set(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doOpen()V

    return-void
.end method

.method static synthetic access$1900(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doClose()V

    return-void
.end method

.method static synthetic access$2000(Lyi/support/v1/menu/HybridMenuPanel$MenuController;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->handleMenuEnding(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2300(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->open()V

    return-void
.end method

.method static synthetic access$2400(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->close()V

    return-void
.end method

.method static synthetic access$4300(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FLjava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 558
    invoke-direct {p0, p1, p2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->pullUpMenu(FLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4900(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lyi/support/v1/menu/HybridMenuPanel$MenuController;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 558
    invoke-direct {p0, p1, p2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->measure(II)V

    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doClose()V

    .line 600
    :cond_0
    return-void
.end method

.method private doClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 642
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iput-boolean v3, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mIsOpened:Z

    .line 644
    const/4 v2, 0x1

    iput-boolean v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mIsTransitioning:Z

    .line 645
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2, v3}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 646
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$Observer;

    move-result-object v2

    invoke-interface {v2, v3}, Lyi/support/v1/menu/HybridMenuPanel$Observer;->onMenuChangeStart(Z)V

    .line 648
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$3400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    move-result-object v2

    invoke-virtual {v2}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$3;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$3;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    .line 657
    .local v0, fadeInAction:Ljava/lang/Runnable;
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v2

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isVisible()Z
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$4400(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 675
    .end local v0           #fadeInAction:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 662
    .restart local v0       #fadeInAction:Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$4200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    move-result-object v2

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->getHeight()I
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->access$600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)I

    move-result v2

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
    invoke-static {v3}, Lyi/support/v1/menu/HybridMenuPanel;->access$3100(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    move-result-object v3

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I
    invoke-static {v3}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 663
    .local v1, to:F
    invoke-direct {p0, v1, v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->pushDownMenu(FLjava/lang/Runnable;)V

    goto :goto_0

    .line 666
    .end local v0           #fadeInAction:Ljava/lang/Runnable;
    .end local v1           #to:F
    :cond_2
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$4200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    move-result-object v2

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->getHeight()I
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->access$600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Lyi/support/v1/menu/HybridMenuPanel$MenuController$4;

    invoke-direct {v3, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$4;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    invoke-direct {p0, v2, v3}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->pushDownMenu(FLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private doOpen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 603
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iput-boolean v3, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mIsOpened:Z

    .line 605
    iput-boolean v3, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mIsTransitioning:Z

    .line 606
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$Observer;

    move-result-object v1

    invoke-interface {v1, v3}, Lyi/support/v1/menu/HybridMenuPanel$Observer;->onMenuChangeStart(Z)V

    .line 609
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelController:Lyi/support/v1/menu/HybridMenuPanel$PanelController;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$3400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    move-result-object v1

    invoke-virtual {v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;

    invoke-direct {v0, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    .line 623
    .local v0, pullUpMenu:Ljava/lang/Runnable;
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v1

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->isVisible()Z
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$4400(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v1

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fadeOut(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$3300(Lyi/support/v1/menu/HybridMenuPanel$ActionController;Ljava/lang/Runnable;)V

    .line 639
    .end local v0           #pullUpMenu:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local v0       #pullUpMenu:Ljava/lang/Runnable;
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 631
    .end local v0           #pullUpMenu:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuHeight:Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$4200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;

    move-result-object v1

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->getHeight()I
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;->access$600(Lyi/support/v1/menu/HybridMenuPanel$MenuHeight;)I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Lyi/support/v1/menu/HybridMenuPanel$MenuController$2;

    invoke-direct {v2, p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$2;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;)V

    invoke-direct {p0, v1, v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->pullUpMenu(FLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getMeasuredHeight()I
    .locals 4

    .prologue
    .line 581
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$2900(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    move-result-object v2

    invoke-direct {v2}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mListMenuView:Lcom/yi/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v2}, Lcom/yi/internal/view/menu/ExpandedMenuView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v3, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mListMenuView:Lcom/yi/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v3}, Lcom/yi/internal/view/menu/ExpandedMenuView;->getDividerHeight()I

    move-result v3

    add-int v1, v2, v3

    .line 583
    .local v1, itemHeight:I
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mListMenuView:Lcom/yi/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v2}, Lcom/yi/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 584
    .local v0, count:I
    mul-int v2, v1, v0

    .line 586
    .end local v0           #count:I
    .end local v1           #itemHeight:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleMenuEnding(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "callback"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 747
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$Observer;

    move-result-object v0

    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v3

    invoke-interface {v0, v3}, Lyi/support/v1/menu/HybridMenuPanel$Observer;->onMenuChangeEnd(Z)V

    .line 749
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->clearAnimation()V

    .line 750
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 752
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #calls: Lyi/support/v1/menu/HybridMenuPanel;->refreshMenuIndicatorVisibility()V
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4600(Lyi/support/v1/menu/HybridMenuPanel;)V

    .line 756
    if-eqz p1, :cond_0

    .line 757
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 759
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 752
    goto :goto_0

    :cond_2
    move v2, v1

    .line 753
    goto :goto_1
.end method

.method private isAvailable()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mListMenuView:Lcom/yi/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 575
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mListMenuView:Lcom/yi/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/yi/internal/view/menu/ExpandedMenuView;->measure(II)V

    .line 578
    :cond_0
    return-void
.end method

.method private open()V
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doOpen()V

    .line 594
    :cond_0
    return-void
.end method

.method private pullUpMenu(FLjava/lang/Runnable;)V
    .locals 14
    .parameter "from"
    .parameter "callback"

    .prologue
    .line 678
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuIndicator:Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4500(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;

    move-result-object v0

    const/16 v1, 0x8

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->setVisibility(I)V
    invoke-static {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->access$2800(Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;I)V

    .line 680
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 682
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 683
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v0

    sub-float v3, p1, v0

    .line 684
    .local v3, current:F
    iget-object v7, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    new-instance v0, Lyi/support/v1/utils/Animatable$Vertical;

    const/4 v2, 0x0

    const-wide/16 v4, 0x1c2

    const/high16 v6, 0x4040

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/utils/Animatable$Vertical;-><init>(FFFJF)V

    invoke-virtual {v7, v0}, Lyi/support/v1/menu/HybridMenuPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 688
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v13, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 689
    .local v13, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v4, Lyi/support/v1/utils/Animatable$Alpha;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    sub-float v0, p1, v3

    div-float v7, v0, p1

    const-wide/16 v8, 0x96

    invoke-direct/range {v4 .. v9}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJ)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 691
    new-instance v4, Lyi/support/v1/menu/HybridMenuPanel$MenuController$5;

    neg-float v6, p1

    const/4 v7, 0x0

    neg-float v8, v3

    const-wide/16 v9, 0x1c2

    const/high16 v11, 0x4040

    move-object v5, p0

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v12}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$5;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FFFJFLjava/lang/Runnable;)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 700
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 710
    .end local v3           #current:F
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v4, Lyi/support/v1/menu/HybridMenuPanel$MenuController$6;

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const-wide/16 v9, 0x96

    move-object v5, p0

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v11}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$6;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FFFJLjava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private pushDownMenu(FLjava/lang/Runnable;)V
    .locals 13
    .parameter "to"
    .parameter "callback"

    .prologue
    .line 713
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3800(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuIndicator:Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4500(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;

    move-result-object v0

    const/16 v1, 0x8

    #calls: Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->setVisibility(I)V
    invoke-static {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;->access$2800(Lyi/support/v1/menu/HybridMenuPanel$MenuIndicator;I)V

    .line 715
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 717
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 718
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v3

    .line 719
    .local v3, current:F
    iget-object v6, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    new-instance v0, Lyi/support/v1/utils/Animatable$Vertical;

    const/4 v1, 0x0

    const-wide/16 v4, 0xe1

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Vertical;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Lyi/support/v1/menu/HybridMenuPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 722
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 723
    .local v12, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v4, Lyi/support/v1/utils/Animatable$Alpha;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    sub-float v0, p1, v3

    div-float v7, v0, p1

    const-wide/16 v8, 0x96

    const-wide/16 v10, 0x4b

    invoke-direct/range {v4 .. v11}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJJ)V

    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 726
    new-instance v4, Lyi/support/v1/menu/HybridMenuPanel$MenuController$7;

    const/4 v6, 0x0

    neg-float v7, p1

    neg-float v8, v3

    const-wide/16 v9, 0xe1

    move-object v5, p0

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$7;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FFFJLjava/lang/Runnable;)V

    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 734
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 744
    .end local v3           #current:F
    .end local v12           #animationSet:Landroid/view/animation/AnimationSet;
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v4, Lyi/support/v1/menu/HybridMenuPanel$MenuController$8;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const-wide/16 v9, 0x96

    move-object v5, p0

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lyi/support/v1/menu/HybridMenuPanel$MenuController$8;-><init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController;FFFJLjava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private set(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "listMenu"

    .prologue
    .line 567
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$4100(Lyi/support/v1/menu/HybridMenuPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x402003e

    #calls: Lyi/support/v1/menu/HybridMenuPanel;->removeAndAddView(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    invoke-static {v0, p1, v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$3900(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yi/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mListMenuView:Lcom/yi/internal/view/menu/ExpandedMenuView;

    .line 568
    return-void
.end method
