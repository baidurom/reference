.class Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;
.super Landroid/os/Handler;
.source "VoiceprintUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceHandler"
.end annotation


# static fields
.field public static final BEGIN_VOICE_TRANSACTION:I = 0x1

.field public static final END_VOICE_DATA:I = 0x3

.field public static final END_VOICE_TRANSACTION:I = 0x6

.field public static final GET_VOICE_RESULT:I = 0x4

.field public static final RESET_VOICE_TRANSACTION:I = 0x5

.field public static final SEND_VOICE_DATA:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method private constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    return-void
.end method

.method private processSpeechResult()V
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 897
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$3000()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 907
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2200()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v1

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V
    invoke-static {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2700(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    .line 910
    :goto_0
    return-void

    .line 899
    :pswitch_0
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/voiceprint/VoiceprintHandler;->clearVoiceTestTransaction()V

    .line 900
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2600()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v1

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->delaySetNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V
    invoke-static {v0, v1, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2100(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V

    goto :goto_0

    .line 904
    :pswitch_1
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$3100()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v1

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->delaySetNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V
    invoke-static {v0, v1, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2100(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V

    goto :goto_0

    .line 897
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 836
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    monitor-enter v3

    .line 837
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 888
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 890
    :cond_0
    :goto_0
    monitor-exit v3

    .line 891
    return-void

    .line 839
    :pswitch_1
    const-string v2, "VoiceprintUnlock"

    const-string v4, "BEGIN_VOICE_TRANSACTION"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :try_start_1
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2800()Z

    move-result v2

    if-nez v2, :cond_0

    .line 842
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/baidu/voiceprint/VoiceprintHandler;->beginVoiceTransaction(I)Z

    .line 843
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2802(Z)Z

    .line 844
    const-string v2, "VoiceprintUnlock"

    const-string v4, "success to finish init()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "VoiceprintUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to begin voice transaction. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2600()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v4

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V
    invoke-static {v2, v4}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2700(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    goto :goto_0

    .line 890
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 854
    :pswitch_2
    :try_start_3
    const-string v2, "VoiceprintUnlock"

    const-string v4, "SEND_VOICE_DATA"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [S

    check-cast v2, [S

    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lcom/baidu/voiceprint/VoiceprintHandler;->sendData([SII)I

    goto :goto_0

    .line 859
    :pswitch_3
    const/4 v2, 0x1

    new-array v1, v2, [S

    .line 860
    .local v1, tmpBuffer:[S
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-short v4, v1, v2

    .line 861
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Lcom/baidu/voiceprint/VoiceprintHandler;->sendData([SII)I

    .line 862
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/voiceprint/VoiceprintHandler;->stopRecording()V

    .line 863
    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2900()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v4

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V
    invoke-static {v2, v4}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2700(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    .line 864
    const-string v2, "VoiceprintUnlock"

    const-string v4, "END_VOICE_DATA"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    .end local v1           #tmpBuffer:[S
    :pswitch_4
    const-string v2, "VoiceprintUnlock"

    const-string v4, "GET_VOICE_RESULT"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 870
    :try_start_4
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/voiceprint/VoiceprintHandler;->testVoiceprint()I

    move-result v2

    invoke-static {v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$3002(I)I

    .line 871
    const-string v2, "VoiceprintUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got voice result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$3000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->processSpeechResult()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 873
    :catch_1
    move-exception v0

    .line 875
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2600()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v4

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V
    invoke-static {v2, v4}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2700(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    goto/16 :goto_0

    .line 880
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_5
    const-string v2, "VoiceprintUnlock"

    const-string v4, "END_VOICE_TRANSACTION"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/voiceprint/VoiceprintHandler;->stopRecording()V

    .line 882
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/voiceprint/VoiceprintHandler;->endVoiceTransaction()V

    .line 883
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$900()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 884
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1002(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;)Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
