.class Lcom/yi/internal/media/AudioFadeController$1;
.super Landroid/os/Handler;
.source "AudioFadeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/media/AudioFadeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/media/AudioFadeController;


# direct methods
.method constructor <init>(Lcom/yi/internal/media/AudioFadeController;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 105
    invoke-static {}, Lcom/yi/internal/media/AudioFadeController;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 106
    :try_start_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 107
    .local v4, streamType:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 108
    .local v1, fadeInterval:I
    invoke-static {}, Lcom/yi/internal/media/AudioFadeController;->access$100()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/yi/internal/media/AudioFadeController;->access$100()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    :cond_0
    monitor-exit v6

    .line 141
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v5, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    #getter for: Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/yi/internal/media/AudioFadeController;->access$200(Lcom/yi/internal/media/AudioFadeController;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 112
    .local v0, currentVolume:I
    invoke-static {}, Lcom/yi/internal/media/AudioFadeController;->access$100()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 113
    .local v3, maxVolume:I
    invoke-static {}, Lcom/yi/internal/media/AudioFadeController;->access$300()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;

    .line 114
    .local v2, listener:Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 140
    :goto_1
    monitor-exit v6

    goto :goto_0

    .end local v0           #currentVolume:I
    .end local v1           #fadeInterval:I
    .end local v2           #listener:Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;
    .end local v3           #maxVolume:I
    .end local v4           #streamType:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 116
    .restart local v0       #currentVolume:I
    .restart local v1       #fadeInterval:I
    .restart local v2       #listener:Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;
    .restart local v3       #maxVolume:I
    .restart local v4       #streamType:I
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 117
    const/4 v5, 0x1

    if-lt v0, v5, :cond_3

    .line 118
    :try_start_1
    iget-object v5, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    #getter for: Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/yi/internal/media/AudioFadeController;->access$400(Lcom/yi/internal/media/AudioFadeController;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    #getter for: Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/yi/internal/media/AudioFadeController;->access$400(Lcom/yi/internal/media/AudioFadeController;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 125
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    #getter for: Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/yi/internal/media/AudioFadeController;->access$200(Lcom/yi/internal/media/AudioFadeController;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v0, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 121
    :cond_3
    invoke-static {}, Lcom/yi/internal/media/AudioFadeController;->access$100()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    if-eqz v2, :cond_2

    .line 123
    invoke-interface {v2}, Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;->onFadeComplete()V

    goto :goto_2

    .line 128
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 129
    if-gt v0, v3, :cond_5

    .line 130
    iget-object v5, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    #getter for: Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/yi/internal/media/AudioFadeController;->access$400(Lcom/yi/internal/media/AudioFadeController;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    #getter for: Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/yi/internal/media/AudioFadeController;->access$400(Lcom/yi/internal/media/AudioFadeController;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 137
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/yi/internal/media/AudioFadeController$1;->this$0:Lcom/yi/internal/media/AudioFadeController;

    #getter for: Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/yi/internal/media/AudioFadeController;->access$200(Lcom/yi/internal/media/AudioFadeController;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v0, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 133
    :cond_5
    invoke-static {}, Lcom/yi/internal/media/AudioFadeController;->access$100()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    if-eqz v2, :cond_4

    .line 135
    invoke-interface {v2}, Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;->onFadeComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
