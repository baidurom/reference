.class Lyi/support/v1/menu/HybridMenuPanel$MenuController$4;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$MenuController;->doClose()V
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
    .line 666
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$4;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$4;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lyi/support/v1/menu/HybridMenuPanel;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$4;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mIsTransitioning:Z

    .line 671
    return-void
.end method
