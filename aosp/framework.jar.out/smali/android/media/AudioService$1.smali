.class Landroid/media/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 8
    .parameter "error"

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    sparse-switch p1, :sswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 225
    :sswitch_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Enter AudioSystem.AUDIO_STATUS_SERVER_DIED callback:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v5}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v7, 0x5dc

    move v5, v4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 229
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0, v4}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_0

    .line 233
    :sswitch_1
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Enter AudioSystem.AUDIO_STATUS_OK callback:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v5}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x6

    move v5, v4

    move v7, v4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 237
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
