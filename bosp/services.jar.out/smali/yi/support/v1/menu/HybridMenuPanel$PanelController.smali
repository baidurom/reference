.class Lyi/support/v1/menu/HybridMenuPanel$PanelController;
.super Lyi/support/v1/menu/HybridMenuPanel$PanelState;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelController"
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    .line 337
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelState;-><init>(ZZ)V

    .line 338
    return-void
.end method

.method private isInitializing()Z
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionMenuChangeTimeStamp:J
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3000(Lyi/support/v1/menu/HybridMenuPanel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->doClose()V

    .line 350
    :cond_0
    return-void
.end method

.method public doClose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 382
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isInitializing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    const/4 v2, 0x1

    iput-boolean v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->mIsTransitioning:Z

    .line 384
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v2, v4}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 386
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$3100(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    move-result-object v2

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I

    move-result v2

    int-to-float v1, v2

    .line 387
    .local v1, to:F
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v0

    .line 388
    .local v0, current:F
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v2

    new-instance v3, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;

    invoke-direct {v3, p0, v1, v0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;-><init>(Lyi/support/v1/menu/HybridMenuPanel$PanelController;FF)V

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fadeOut(Ljava/lang/Runnable;)V
    invoke-static {v2, v3}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$3300(Lyi/support/v1/menu/HybridMenuPanel$ActionController;Ljava/lang/Runnable;)V

    .line 406
    .end local v0           #current:F
    .end local v1           #to:F
    :goto_0
    iput-boolean v4, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->mIsOpened:Z

    .line 407
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
    invoke-static {v2}, Lyi/support/v1/menu/HybridMenuPanel;->access$3200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V

    .line 408
    return-void

    .line 403
    :cond_0
    iget-object v2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public doOpen()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 357
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iput-boolean v8, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->mIsTransitioning:Z

    .line 360
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->hide()V
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$2200(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V

    .line 363
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3100(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    move-result-object v0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I

    move-result v0

    int-to-float v2, v0

    .line 364
    .local v2, from:F
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-static {v0, v2}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v4

    .line 365
    .local v4, current:F
    iget-object v7, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;

    const/4 v3, 0x0

    const-wide/16 v5, 0x96

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel$PanelController;FFFJ)V

    invoke-virtual {v7, v0}, Lyi/support/v1/menu/HybridMenuPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 378
    .end local v2           #from:F
    .end local v4           #current:F
    :cond_0
    iput-boolean v8, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->mIsOpened:Z

    .line 379
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->doOpen()V

    .line 344
    :cond_0
    return-void
.end method
