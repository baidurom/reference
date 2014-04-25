.class Lcom/android/phone/VoiceMailSetting$3;
.super Landroid/os/Handler;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceMailSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceMailSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1180
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1181
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1199
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    iget-boolean v2, v2, Lcom/android/phone/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    iget-object v2, v2, Lcom/android/phone/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    iget-boolean v2, v2, Lcom/android/phone/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    #calls: Lcom/android/phone/VoiceMailSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/VoiceMailSetting;->access$300(Lcom/android/phone/VoiceMailSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1202
    .local v0, done:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1204
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    const/16 v3, 0x25b

    #calls: Lcom/android/phone/VoiceMailSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/VoiceMailSetting;->access$500(Lcom/android/phone/VoiceMailSetting;I)V

    .line 1205
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    invoke-virtual {v2}, Lcom/android/phone/VoiceMailSetting;->onRevertDone()V

    .line 1207
    :cond_3
    return-void

    .line 1183
    .end local v0           #done:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    iput-object v1, v2, Lcom/android/phone/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    goto :goto_0

    .line 1187
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting$3;->this$0:Lcom/android/phone/VoiceMailSetting;

    #getter for: Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/VoiceMailSetting;->access$200(Lcom/android/phone/VoiceMailSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1199
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1181
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
