.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;
.super Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateRefreshHover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 486
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 492
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 493
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 494
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I

    move-result v0

    if-lez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 497
    :cond_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    goto :goto_0
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #calls: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    .line 481
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setTransparent(Z)V

    .line 482
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 501
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$2000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 502
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$2000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 503
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$2000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 504
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$2000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 506
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1, v3}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$2000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 512
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/WordList;->updateWordList(Z)V

    .line 513
    invoke-static {p1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    move-result-object v0

    const-string v1, "0251"

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->addStatistic(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$2000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 509
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1, v3}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    goto :goto_0
.end method
