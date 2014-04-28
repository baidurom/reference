.class Lyi/support/v1/ActionBarTitleViewContainer$4;
.super Ljava/lang/Object;
.source "ActionBarTitleViewContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 224
    iput-object p1, p0, Lyi/support/v1/ActionBarTitleViewContainer$4;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$4;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyi/support/v1/ActionBarTitleViewContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$4;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mCallback:Lyi/support/v1/YiLaf$OnSpinerItemListener;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$700(Lyi/support/v1/ActionBarTitleViewContainer;)Lyi/support/v1/YiLaf$OnSpinerItemListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$4;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mCallback:Lyi/support/v1/YiLaf$OnSpinerItemListener;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$700(Lyi/support/v1/ActionBarTitleViewContainer;)Lyi/support/v1/YiLaf$OnSpinerItemListener;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lyi/support/v1/YiLaf$OnSpinerItemListener;->onSpinerItemSelected(IJ)Z

    .line 236
    :cond_1
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer$4;->this$0:Lyi/support/v1/ActionBarTitleViewContainer;

    #getter for: Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 237
    return-void
.end method
