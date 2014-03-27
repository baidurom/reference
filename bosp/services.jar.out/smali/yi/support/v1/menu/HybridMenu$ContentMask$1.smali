.class Lyi/support/v1/menu/HybridMenu$ContentMask$1;
.super Ljava/lang/Object;
.source "HybridMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/menu/HybridMenu$ContentMask;-><init>(Lyi/support/v1/menu/HybridMenu;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

.field final synthetic val$this$0:Lyi/support/v1/menu/HybridMenu;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu$ContentMask;Lyi/support/v1/menu/HybridMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$1;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    iput-object p2, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$1;->val$this$0:Lyi/support/v1/menu/HybridMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask$1;->this$1:Lyi/support/v1/menu/HybridMenu$ContentMask;

    iget-object v0, v0, Lyi/support/v1/menu/HybridMenu$ContentMask;->this$0:Lyi/support/v1/menu/HybridMenu;

    invoke-virtual {v0}, Lyi/support/v1/menu/HybridMenu;->closeOptionsMenu()V

    .line 296
    return-void
.end method
