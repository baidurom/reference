.class Lyi/support/v1/menu/HybridMenuPanel$2;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenuPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/menu/HybridMenuPanel;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$2;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$2;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mActionController:Lyi/support/v1/menu/HybridMenuPanel$ActionController;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$800(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$ActionController;

    move-result-object v0

    #calls: Lyi/support/v1/menu/HybridMenuPanel$ActionController;->fadeIn()V
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel$ActionController;->access$900(Lyi/support/v1/menu/HybridMenuPanel$ActionController;)V

    .line 114
    return-void
.end method
