.class Lyi/support/v1/ActionBarTitleViewContainer$2;
.super Ljava/lang/Object;
.source "ActionBarTitleViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/ActionBarTitleViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/ActionBarTitleViewContainer;


# direct methods
.method constructor <init>(Lyi/support/v1/ActionBarTitleViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lyi/support/v1/ActionBarTitleViewContainer$2;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 200
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$2;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    iget-object v0, v0, Lyi/support/v1/ActionBarTitleViewContainer;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lyi/support/v1/ActionBarTitleViewContainer$2;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mActionButtonItem:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lyi/support/v1/ActionBarTitleViewContainer;->access$100(Lyi/support/v1/ActionBarTitleViewContainer;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 201
    return-void
.end method
