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
    .line 282
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x1

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v1, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 289
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 295
    :cond_0
    :goto_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v1, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 297
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v3}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v1, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 300
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v5}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 302
    :cond_1
    return-void

    .line 290
    :cond_2
    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v1, v6}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 293
    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v2, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v2, v6}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
