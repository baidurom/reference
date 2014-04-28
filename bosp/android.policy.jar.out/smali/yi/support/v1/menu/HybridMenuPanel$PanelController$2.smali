.class Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$PanelController;->doClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

.field final synthetic val$current:F

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$PanelController;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iput p2, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->val$to:F

    iput p3, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->val$current:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 391
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->this$1:Lyi/support/v1/menu/HybridMenuPanel$PanelController;

    iget-object v7, v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    new-instance v0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2$1;

    const/4 v2, 0x0

    iget v3, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->val$to:F

    iget v4, p0, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;->val$current:F

    const-wide/16 v5, 0x96

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/menu/HybridMenuPanel$PanelController$2$1;-><init>(Lyi/support/v1/menu/HybridMenuPanel$PanelController$2;FFFJ)V

    invoke-virtual {v7, v0}, Lyi/support/v1/menu/HybridMenuPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 400
    return-void
.end method
