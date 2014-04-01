.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;
.super Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    .line 370
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 371
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 372
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1300(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 373
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 374
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1500(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 375
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I

    move-result v0

    if-lez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 384
    :cond_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 379
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1200(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    goto :goto_0
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #calls: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$500(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->hide()V

    .line 360
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setTransparent(Z)V

    .line 361
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->requestSingleLine(Z)V

    .line 362
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 365
    :cond_1
    return-void
.end method
