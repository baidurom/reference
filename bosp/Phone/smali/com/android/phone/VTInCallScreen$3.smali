.class Lcom/android/phone/VTInCallScreen$3;
.super Ljava/lang/Thread;
.source "VTInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->onVTTakePeerPhotoClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$3;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1055
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 1056
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->savePeerPhoto()Z

    move-result v0

    .line 1058
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$3;->this$0:Lcom/android/phone/VTInCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVTTakePeerPhotoClick(): VTManager.getInstance().savePeerPhoto(), return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$3;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/VTInCallScreen;->access$700(Lcom/android/phone/VTInCallScreen;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$3;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$700(Lcom/android/phone/VTInCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1065
    :goto_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 1066
    return-void

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$3;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/VTInCallScreen;->access$700(Lcom/android/phone/VTInCallScreen;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$3;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$700(Lcom/android/phone/VTInCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
