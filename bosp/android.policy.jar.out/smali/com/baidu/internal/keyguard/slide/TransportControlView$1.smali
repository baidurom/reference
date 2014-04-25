.class Lcom/baidu/internal/keyguard/slide/TransportControlView$1;
.super Landroid/os/Handler;
.source "TransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TransportControlView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    const-string v0, "TransportControlView"

    const-string v1, "handleMessage: MSG_UPDATE_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$000(Lcom/baidu/internal/keyguard/slide/TransportControlView;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/baidu/internal/keyguard/slide/TransportControlView;->updatePlayPauseState(I)V
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$100(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)V

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "TransportControlView"

    const-string v1, "handleMessage: MSG_SET_METADATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$000(Lcom/baidu/internal/keyguard/slide/TransportControlView;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateMetadata(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$200(Lcom/baidu/internal/keyguard/slide/TransportControlView;Landroid/os/Bundle;)V

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "TransportControlView"

    const-string v1, "handleMessage: MSG_SET_TRANSPORT_CONTROLS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$000(Lcom/baidu/internal/keyguard/slide/TransportControlView;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateTransportControls(I)V
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$300(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)V

    goto :goto_0

    .line 119
    :pswitch_3
    const-string v0, "TransportControlView"

    const-string v1, "handleMessage: MSG_SET_ARTWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$000(Lcom/baidu/internal/keyguard/slide/TransportControlView;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$400(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$502(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 122
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$400(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    move-result-object v0

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$500(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$400(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    move-result-object v2

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$500(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->createImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->setBackground(Landroid/graphics/Bitmap;)V

    .line 124
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music album set to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$400(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    move-result-object v2

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$500(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$700(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->setBackground(Landroid/graphics/Bitmap;)V

    .line 129
    :cond_2
    const-string v0, "TransportControlView"

    const-string v1, "music album set to default bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    :pswitch_4
    const-string v0, "TransportControlView"

    const-string v1, "handleMessage: MSG_SET_GENERATION_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$800(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$900()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 148
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$900()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 149
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->onPlayStateChanged(I)V

    .line 152
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->requestHide(Landroid/view/View;)V

    .line 170
    :cond_3
    :goto_1
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New genId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clearing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$002(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)I

    .line 172
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;
    invoke-static {v1, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$1002(Lcom/baidu/internal/keyguard/slide/TransportControlView;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 160
    :cond_4
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->onPlayStateChanged(I)V

    .line 165
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->requestHide(Landroid/view/View;)V

    goto :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
