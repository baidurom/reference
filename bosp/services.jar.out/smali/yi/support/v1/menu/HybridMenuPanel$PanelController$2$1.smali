.class Lyi/support/v1/menu/HybridMenuPanel$PanelController$2$1;
.super Lyi/support/v1/utils/Animatable$Vertical;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;FFFJ)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 392
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;

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
    .line 395
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->mIsTransitioning:Z

    .line 396
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel;->clearAnimation()V

    .line 397
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 398
    return-void
.end method
