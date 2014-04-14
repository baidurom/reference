.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;
.super Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCameraHover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    .line 427
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 428
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 429
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I

    move-result v0

    if-lez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 437
    :cond_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    goto :goto_0
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 2
    .parameter "oldState"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #calls: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    .line 421
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setTransparent(Z)V

    .line 422
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    invoke-static {p1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    move-result-object v1

    const-string v2, "0250"

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->addStatistic(Ljava/lang/String;)V

    .line 444
    return-object v0
.end method
