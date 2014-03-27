.class Lyi/support/v1/menu/HybridMenu$1;
.super Ljava/lang/Object;
.source "HybridMenu.java"

# interfaces
.implements Lyi/support/v1/menu/HybridMenuPanel$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/menu/HybridMenu;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$1;->this$0:Lyi/support/v1/menu/HybridMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuChangeEnd(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 248
    :cond_0
    return-void
.end method

.method public onMenuChangeStart(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$1;->this$0:Lyi/support/v1/menu/HybridMenu;

    #getter for: Lyi/support/v1/menu/HybridMenu;->mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu;->access$000(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenu$ContentMask;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->fadeIn()V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$1;->this$0:Lyi/support/v1/menu/HybridMenu;

    #getter for: Lyi/support/v1/menu/HybridMenu;->mContentMask:Lyi/support/v1/menu/HybridMenu$ContentMask;
    invoke-static {v0}, Lyi/support/v1/menu/HybridMenu;->access$000(Lyi/support/v1/menu/HybridMenu;)Lyi/support/v1/menu/HybridMenu$ContentMask;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->fadeOut()V

    goto :goto_0
.end method

.method public onOpenOptionsMenu()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$1;->this$0:Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu;->openOptionsMenu()V

    .line 231
    return-void
.end method
