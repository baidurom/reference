.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;
.super Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 340
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 341
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1200(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 342
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1300(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 343
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 344
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1500(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 345
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I

    move-result v0

    if-lez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    goto :goto_0
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 3
    .parameter "oldState"

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$500(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->show()V

    .line 326
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setTransparent(Z)V

    .line 327
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->requestSingleLine(Z)V

    .line 328
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 329
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V

    goto :goto_0
.end method
