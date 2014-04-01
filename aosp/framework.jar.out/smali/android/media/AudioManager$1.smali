.class Landroid/media/AudioManager$1;
.super Landroid/media/IAudioFocusDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1617
    iput-object p1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 4
    .parameter "focusChange"
    .parameter "id"

    .prologue
    .line 1620
    invoke-static {}, Landroid/media/AudioManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAudioFocusChange: change = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    #getter for: Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;
    invoke-static {v1}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1622
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    #getter for: Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;
    invoke-static {v1}, Landroid/media/AudioManager;->access$300(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1623
    return-void
.end method
