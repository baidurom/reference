.class Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;
.super Lyi/support/v1/utils/Animatable$Vertical;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$PanelController;->doOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$PanelController;FFFJ)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 366
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Vertical;-><init>(FFFJ)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iput-boolean v1, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->mIsTransitioning:Z

    .line 370
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->clearAnimation()V

    .line 371
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fadeIn()V
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$900(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V

    .line 372
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mPanelPlaceHolder:Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$3200(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v1, v1, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionHeight:Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel;->access$3100(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;

    move-result-object v1

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->getHeight()I
    invoke-static {v1}, Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;->access$2600(Lyi/support/v1/menu/HybridMenuPanel$ActionHeight;)I

    move-result v1

    invoke-virtual {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel$PanelPlaceHolder;->setHeight(I)V

    .line 374
    return-void
.end method
