.class Lyi/support/v1/menu/HybridMenuPanel$1;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel;->onFinishInflate()V
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
    .line 80
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$1;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$1;->this$0:Lyi/support/v1/menu/HybridMenuPanel;

    #getter for: Lyi/support/v1/menu/HybridMenuPanel;->mObserver:Lyi/support/v1/menu/HybridMenuPanel$Observer;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenuPanel;->access$400(Lyi/support/v1/menu/HybridMenuPanel;)Lyi/support/v1/menu/HybridMenuPanel$Observer;

    move-result-object v0

    invoke-interface {v0}, Lyi/support/v1/menu/HybridMenuPanel$Observer;->onOpenOptionsMenu()V

    .line 84
    return-void
.end method
