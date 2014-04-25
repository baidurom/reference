.class Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;
.super Lcom/baidu/internal/keyguard/slide/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mBgCicle:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1300(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 421
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1400(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 422
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1500(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 423
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1600(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 424
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1700(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 425
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCountView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 426
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCountView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1900(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 427
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2000(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/CharggingView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 428
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->showGuideArrow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 434
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    goto :goto_0
.end method

.method public enter(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$900(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/internal/keyguard/slide/TargetCallback;->requestShow()V

    .line 411
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, #drawable@baidu_keyguard_slide_handle_normal#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    instance-of v0, p1, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargets:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1200(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomInAnimation:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1100(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    :cond_0
    return-void
.end method
