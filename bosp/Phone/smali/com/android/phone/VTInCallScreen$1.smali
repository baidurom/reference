.class Lcom/android/phone/VTInCallScreen$1;
.super Landroid/os/Handler;
.source "VTInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VTInCallScreen;
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
    .line 194
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f0b0398

    const v7, 0x7f0b0399

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 203
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VTInCallScreen Handler message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 205
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 401
    const-string v2, "VTInCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler: unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 209
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_DISCONNECTED ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 211
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 212
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0

    .line 217
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_CONNECTED ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 219
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0

    .line 223
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_START_COUNTER ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreen;->onReceiveVTManagerStartCounter()V

    goto :goto_0

    .line 229
    :sswitch_3
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v6, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 230
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0

    .line 234
    :sswitch_4
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_READY ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->onReceiveVTManagerReady()V
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$100(Lcom/android/phone/VTInCallScreen;)V

    goto :goto_0

    .line 240
    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_EM_INDICATION ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_PEER_SNAPSHOT_OK ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0396

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_PEER_SNAPSHOT_FAIL ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0397

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :sswitch_8
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_CALL_DISCONNECT ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toast is shown, string is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_CALL_DISCONNECT) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_CALL_DISCONNECT) - Exception ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_NORMAL_END_SESSION_COMMAND ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_2

    .line 282
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_NORMAL_END_SESSION_COMMAND) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 287
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 288
    :catch_1
    move-exception v1

    .line 289
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_NORMAL_END_SESSION_COMMAND) - Exception ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_a
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_START_VTS_FAIL ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_3

    .line 299
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0412

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 304
    :goto_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->internalHangupAll()V

    goto/16 :goto_0

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_1

    .line 313
    :sswitch_b
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_CAMERA ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_5

    .line 316
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_6

    .line 317
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0411

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 321
    :goto_2
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 323
    :cond_5
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_CAMERA) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 328
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->internalHangupAll()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 329
    :catch_2
    move-exception v1

    .line 331
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_CAMERA) - Exception ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_2

    .line 338
    :sswitch_c
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_MEDIA_SERVER_DIED ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_7

    .line 341
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 344
    :cond_7
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_MEDIA_SERVER_DIED) - ForegroundCall exists, so hangup it ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 348
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/VTInCallScreen;->access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->hangupActiveCall(Lcom/android/internal/telephony/Call;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 349
    :catch_3
    move-exception v1

    .line 351
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : (VT_ERROR_MEDIA_SERVER_DIED) - Exception ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_d
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_RECEIVE_FIRSTFRAME ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->onVTReceiveFirstFrame()V
    invoke-static {v2}, Lcom/android/phone/VTInCallScreen;->access$500(Lcom/android/phone/VTInCallScreen;)V

    .line 360
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto/16 :goto_0

    .line 364
    :sswitch_e
    const/16 v2, 0x7fff

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_8

    .line 365
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_8
    const/16 v2, 0x321

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreen;->stopRecord()V

    goto/16 :goto_0

    .line 373
    :sswitch_f
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/VTInCallScreen;->stopRecord()V

    goto/16 :goto_0

    .line 380
    :sswitch_10
    const/4 v0, 0x0

    .line 381
    .local v0, OK:I
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_9

    .line 382
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_MEDIA_RECORDER_COMPLETE, arg is OK "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    :cond_9
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_ERROR_MEDIA_RECORDER_COMPLETE, arg is not OK "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    .end local v0           #OK:I
    :sswitch_11
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_PEER_CAMERA_OPEN ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    :sswitch_12
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v3, "- handler : VT_MSG_PEER_CAMERA_CLOSE ! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen$1;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_5
        0x7 -> :sswitch_2
        0x8 -> :sswitch_d
        0x9 -> :sswitch_11
        0x10 -> :sswitch_12
        0x7e -> :sswitch_6
        0x7f -> :sswitch_7
        0x8001 -> :sswitch_8
        0x8002 -> :sswitch_a
        0x8003 -> :sswitch_b
        0x8004 -> :sswitch_c
        0x8005 -> :sswitch_e
        0x8006 -> :sswitch_f
        0x8007 -> :sswitch_10
        0x8101 -> :sswitch_9
    .end sparse-switch
.end method
