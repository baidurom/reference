.class public Lyi/support/v1/menu/HybridMenuPanel$Permission;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Permission"
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method public constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$Permission;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReadyToPrepareMenuPanel()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$Permission;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mMenuController:Lyi/support/v1/menu/HybridMenuPanel$MenuController;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$2900(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
