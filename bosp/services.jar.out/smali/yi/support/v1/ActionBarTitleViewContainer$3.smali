.class Lyi/support/v1/ActionBarTitleViewContainer$3;
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
    .line 203
    iput-object p1, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$200(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$200(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$300(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$500(Lyi/support/v1/ActionBarTitleViewContainer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x40800a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 211
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 212
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;
    invoke-static {v1}, Lyi/support/v1/ActionBarTitleViewContainer;->access$600(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$300(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 217
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$3;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
