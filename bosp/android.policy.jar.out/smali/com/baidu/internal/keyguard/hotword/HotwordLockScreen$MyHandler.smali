.class Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;
.super Landroid/os/Handler;
.source "HotwordLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field private mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

.field private mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;)V
    .locals 0
    .parameter "targetHandlePanel"
    .parameter "gallery"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    .line 56
    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    .line 57
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 83
    const-string v1, "HotwordKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;

    iget v3, v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->level:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;

    iget v1, v1, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$BatteryStatus;->plugged:I

    invoke-virtual {v2, v3, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onPowerUpdate(II)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onSmsUnreadUpdated(I)V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;

    .line 72
    .local v0, adapter:Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->getWordListLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->adjustAccordingToWordCount(I)V

    .line 73
    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->notifyDataSetChanged()V

    .line 74
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-virtual {v1, v3}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onWordListAvaliable(Z)V

    .line 75
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v1, v3}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->onWordListAvaliable(Z)V

    .line 80
    .end local v0           #adapter:Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;
    :goto_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mTargetHandlePanel:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onWordListAvaliable(Z)V

    .line 78
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen$MyHandler;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->onWordListAvaliable(Z)V

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
