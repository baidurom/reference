.class Lyi/support/v1/ActionBarTitleViewContainer$5;
.super Ljava/lang/Object;
.source "ActionBarTitleViewContainer.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 240
    iput-object p1, p0, Lyi/support/v1/ActionBarTitleViewContainer$5;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$5;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$200(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$5;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$300(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    return-void
.end method
