.class Landroid/view/VolumePanel$4;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 387
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v3, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->forceTimeout()V
    invoke-static {v2}, Landroid/view/VolumePanel;->access$300(Landroid/view/VolumePanel;)V

    goto :goto_0

    .line 393
    :cond_2
    const-string v2, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 399
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    const v3, #layout@volume_adjust#t

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    #setter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v2, v3}, Landroid/view/VolumePanel;->access$702(Landroid/view/VolumePanel;Landroid/view/View;)Landroid/view/View;

    .line 400
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/view/VolumePanel$4$1;

    invoke-direct {v3, p0}, Landroid/view/VolumePanel$4$1;-><init>(Landroid/view/VolumePanel$4;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 407
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    const v4, #id@visible_panel#t

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    #setter for: Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;
    invoke-static {v3, v2}, Landroid/view/VolumePanel;->access$802(Landroid/view/VolumePanel;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 408
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    const v4, #id@slider_group#t

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    #setter for: Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;
    invoke-static {v3, v2}, Landroid/view/VolumePanel;->access$902(Landroid/view/VolumePanel;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 409
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    const v4, #id@expand_button#t

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    #setter for: Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;
    invoke-static {v3, v2}, Landroid/view/VolumePanel;->access$1002(Landroid/view/VolumePanel;Landroid/view/View;)Landroid/view/View;

    .line 410
    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mView:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    const v4, #id@expand_button_divider#t

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    #setter for: Landroid/view/VolumePanel;->mDivider:Landroid/view/View;
    invoke-static {v3, v2}, Landroid/view/VolumePanel;->access$1102(Landroid/view/VolumePanel;Landroid/view/View;)Landroid/view/View;

    .line 414
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mShowCombinedVolumes:Z
    invoke-static {v2}, Landroid/view/VolumePanel;->access$1200(Landroid/view/VolumePanel;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 415
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mDivider:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$1100(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :goto_1
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->createSliders()V
    invoke-static {v2}, Landroid/view/VolumePanel;->access$1300(Landroid/view/VolumePanel;)V

    .line 423
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v3}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)I

    move-result v3

    #calls: Landroid/view/VolumePanel;->reorderSliders(I)V
    invoke-static {v2, v3}, Landroid/view/VolumePanel;->access$1400(Landroid/view/VolumePanel;I)V

    goto/16 :goto_0

    .line 418
    :cond_3
    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
