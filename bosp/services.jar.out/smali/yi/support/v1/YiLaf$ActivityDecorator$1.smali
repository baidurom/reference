.class Lyi/support/v1/YiLaf$ActivityDecorator$1;
.super Ljava/lang/Object;
.source "YiLaf.java"

# interfaces
.implements Lyi/support/v1/YiLaf$ActionBarWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/YiLaf$ActivityDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/YiLaf$ActivityDecorator;


# direct methods
.method constructor <init>(Lyi/support/v1/YiLaf$ActivityDecorator;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasCustomView()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarCustomViewContainer:Lyi/support/v1/ActionBarCustomViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$800(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarCustomViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/ActionBarCustomViewContainer;->isShown()Z

    move-result v0

    return v0
.end method

.method public hideBadgeView(I)V
    .locals 1
    .parameter "positon"

    .prologue
    .line 308
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$600(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/widget/ScrollTabBar$Interface;

    move-result-object v0

    invoke-interface {v0, p1}, Lyi/widget/ScrollTabBar$Interface;->hideBadgeView(I)V

    .line 309
    return-void
.end method

.method public onScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 283
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$600(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/widget/ScrollTabBar$Interface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lyi/widget/ScrollTabBar$Interface;->onScrolled(IFI)V

    .line 284
    return-void
.end method

.method public removeCustomView()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarCustomViewContainer:Lyi/support/v1/ActionBarCustomViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$800(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarCustomViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/ActionBarCustomViewContainer;->hide()V

    .line 326
    return-void
.end method

.method public setAcitonSpinerAdapter(Landroid/widget/SpinnerAdapter;Lyi/support/v1/YiLaf$OnSpinerItemListener;)V
    .locals 1
    .parameter "adapter"
    .parameter "callback"

    .prologue
    .line 368
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyi/support/v1/ActionBarTitleViewContainer;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 369
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lyi/support/v1/ActionBarTitleViewContainer;->setCallback(Lyi/support/v1/YiLaf$OnSpinerItemListener;)V

    .line 370
    return-void
.end method

.method public setCustomView(I)Landroid/view/View;
    .locals 3
    .parameter "resId"

    .prologue
    .line 313
    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #calls: Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$700(Lyi/support/v1/YiLaf$ActivityDecorator;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, customView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lyi/support/v1/YiLaf$ActivityDecorator$1;->setCustomView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setCustomView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "view"

    .prologue
    .line 319
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarCustomViewContainer:Lyi/support/v1/ActionBarCustomViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$800(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarCustomViewContainer;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #calls: Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$700(Lyi/support/v1/YiLaf$ActivityDecorator;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lyi/support/v1/ActionBarCustomViewContainer;->show(Landroid/app/Activity;Landroid/view/View;)V

    .line 320
    return-object p1
.end method

.method public setDisplayActionButtonEnabled(ZLandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "showActionButton"
    .parameter "res"

    .prologue
    .line 357
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lyi/support/v1/ActionBarTitleViewContainer;->setDisplayActionButtonEnabled(ZLandroid/graphics/drawable/Drawable;)V

    .line 359
    return-void
.end method

.method public setDisplayActionSpinerEnabled(Z)V
    .locals 1
    .parameter "showActionSpiner"

    .prologue
    .line 363
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyi/support/v1/ActionBarTitleViewContainer;->setDisplayActionSpinerEnabled(Z)V

    .line 364
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .parameter "showHomeAsUp"

    .prologue
    .line 352
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyi/support/v1/ActionBarTitleViewContainer;->setDisplayHomeAsUpEnabled(Z)V

    .line 353
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1
    .parameter "showCustom"

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->show()V

    .line 338
    :cond_0
    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "positon"
    .parameter "l"

    .prologue
    .line 288
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$600(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/widget/ScrollTabBar$Interface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lyi/widget/ScrollTabBar$Interface;->setTabOnClickListener(ILandroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 289
    return-void
.end method

.method public setTabOnClickScrollView(ILandroid/view/View;)V
    .locals 2
    .parameter "positon"
    .parameter "scrollView"

    .prologue
    .line 293
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$600(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/widget/ScrollTabBar$Interface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lyi/widget/ScrollTabBar$Interface;->setTabOnClickListener(ILandroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 342
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #calls: Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$700(Lyi/support/v1/YiLaf$ActivityDecorator;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyi/support/v1/ActionBarTitleViewContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 347
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mActionBarTitleViewContainer:Lyi/support/v1/ActionBarTitleViewContainer;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$900(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/support/v1/ActionBarTitleViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyi/support/v1/ActionBarTitleViewContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method public showBadgeView(I)V
    .locals 2
    .parameter "positon"

    .prologue
    .line 298
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$600(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/widget/ScrollTabBar$Interface;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #calls: Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$700(Lyi/support/v1/YiLaf$ActivityDecorator;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lyi/widget/ScrollTabBar$Interface;->showBadgeView(Landroid/app/Activity;I)V

    .line 299
    return-void
.end method

.method public showBadgeView(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "tabIndex"
    .parameter "text"

    .prologue
    .line 303
    iget-object v0, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #getter for: Lyi/support/v1/YiLaf$ActivityDecorator;->mScrollTabBar:Lyi/widget/ScrollTabBar$Interface;
    invoke-static {v0}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$600(Lyi/support/v1/YiLaf$ActivityDecorator;)Lyi/widget/ScrollTabBar$Interface;

    move-result-object v0

    iget-object v1, p0, Lyi/support/v1/YiLaf$ActivityDecorator$1;->this$0:Lyi/support/v1/YiLaf$ActivityDecorator;

    #calls: Lyi/support/v1/YiLaf$ActivityDecorator;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lyi/support/v1/YiLaf$ActivityDecorator;->access$700(Lyi/support/v1/YiLaf$ActivityDecorator;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lyi/widget/ScrollTabBar$Interface;->showBadgeView(Landroid/app/Activity;ILjava/lang/CharSequence;)V

    .line 304
    return-void
.end method
