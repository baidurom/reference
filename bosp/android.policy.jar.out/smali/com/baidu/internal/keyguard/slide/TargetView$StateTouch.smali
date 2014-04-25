.class Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;
.super Lcom/baidu/internal/keyguard/slide/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 456
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2000(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/CharggingView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 457
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1400(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 458
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1500(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 459
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1600(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 460
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1700(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 461
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mBgCicle:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1300(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 462
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 463
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCount:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2400(Lcom/baidu/internal/keyguard/slide/TargetView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCountView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCount:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2500(Lcom/baidu/internal/keyguard/slide/TargetView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCountView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1900(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 469
    :cond_1
    return-void
.end method

.method public enter(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V
    .locals 3
    .parameter "oldState"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$900(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/internal/keyguard/slide/TargetCallback;->requestHide()V

    .line 443
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, #drawable@baidu_keyguard_slide_handle_pressed#t

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$400(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$300(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #calls: Lcom/baidu/internal/keyguard/slide/TargetView;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2100(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    .line 446
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargets:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1200(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomOutAnimation:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2200(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2300(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2300(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 451
    :cond_2
    return-void
.end method
