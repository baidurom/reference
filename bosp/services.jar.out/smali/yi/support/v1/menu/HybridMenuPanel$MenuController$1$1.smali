.class Lyi/support/v1/menu/HybridMenuPanel$MenuController$1$1;
.super Ljava/lang/Object;
.source "HybridMenuPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1$1;->this$2:Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController$1;->this$1:Lyi/support/v1/menu/HybridMenuPanel$MenuController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyi/support/v1/menu/HybridMenuPanel$MenuController;->mIsTransitioning:Z

    .line 618
    return-void
.end method
