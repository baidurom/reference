.class Lcom/android/internal/telephony/IccCard$2;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 824
    const/4 v4, 0x7

    .line 828
    .local v4, serviceClassX:I
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v8, v8, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v8, :cond_0

    .line 829
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] while being destroyed. Ignoring."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :goto_0
    :sswitch_0
    return-void

    .line 834
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1065
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[IccCard] Unknown Event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    :sswitch_1
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v8, v9, :cond_1

    .line 837
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->broadcastRadioOffIntent()V

    .line 839
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 840
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/internal/telephony/IccCard;->mIccType:Ljava/lang/String;

    .line 841
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 842
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "NOT_READY"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :sswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_ICC_READY)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 847
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v9, v8, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 848
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 849
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->updateSimIndicateState()V

    .line 852
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 853
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v9, "SC"

    const-string v10, ""

    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v4, v11}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 856
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v9, "FD"

    const-string v10, ""

    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v4, v11}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 861
    :sswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 862
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v9, "SC"

    const-string v10, ""

    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v4, v11}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 867
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 869
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v8, v0}, Lcom/android/internal/telephony/IccCard;->access$100(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 875
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 877
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-static {v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 879
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v9, "SC"

    const-string v10, ""

    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v4, v11}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 882
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x5

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 891
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 892
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v8, v0}, Lcom/android/internal/telephony/IccCard;->access$100(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 893
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 896
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 897
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v8, v0}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 900
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 901
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v8, v0}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 904
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 905
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    .line 906
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v9, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z
    invoke-static {v9}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;)Z

    move-result v9

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$402(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 907
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccPinLocked= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 913
    :cond_3
    :goto_1
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-static {v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 915
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 910
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error change facility lock with exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 918
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 920
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_6

    .line 921
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v9, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/IccCard;->access$700(Lcom/android/internal/telephony/IccCard;)Z

    move-result v9

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 922
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 923
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->updatePhbStateProperty()V
    invoke-static {v8}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)V

    .line 924
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 930
    :cond_5
    :goto_2
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-static {v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 932
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 927
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error change facility fdn with exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 935
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 936
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_7

    .line 937
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in change sim password with exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_7
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-static {v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 944
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v9, "SC"

    const-string v10, ""

    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v4, v11}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 947
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x5

    iget-object v10, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 952
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_QUERY_NETWORK_LOCK)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 953
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 955
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_9

    .line 956
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error query network lock with exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 959
    :cond_9
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v9, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 960
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 964
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_CHANGE_NETWORK_LOCK)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 965
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 966
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_b

    .line 967
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error change network lock with exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_b
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-static {v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 972
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 975
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_QUERY_ICCID_DONE)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 976
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 977
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_d

    .line 978
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v9, "Error query iccid with exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-static {v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 987
    :goto_3
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 982
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccId:Ljava/lang/String;
    invoke-static {v9, v8}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 983
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query iccid done. mIccId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccId:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/IccCard;->access$1000(Lcom/android/internal/telephony/IccCard;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 984
    :cond_e
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Message;

    invoke-static {v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v9, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    goto :goto_3

    .line 990
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_PHB_READY)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 991
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 993
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v9, "FD"

    const-string v10, ""

    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v8, v9, v10, v4, v11}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 996
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v9, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mPhbReady:Z
    invoke-static {v9}, Lcom/android/internal/telephony/IccCard;->access$800(Lcom/android/internal/telephony/IccCard;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/IccCard;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_0

    .line 999
    :sswitch_10
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_SIM_MISSING)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1001
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$1102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardStatus;)Lcom/android/internal/telephony/IccCardStatus;

    .line 1003
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v9, v8, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1004
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;
    invoke-static {v8}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1005
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1006
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "ABSENT"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "ABSENT"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v9, 0x69

    #calls: Lcom/android/internal/telephony/IccCard;->setNotification(I)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$1300(Lcom/android/internal/telephony/IccCard;I)V

    goto/16 :goto_0

    .line 1012
    :sswitch_11
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_SIM_RECOVERY)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1013
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1014
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRecoveryRegistrants:Landroid/os/RegistrantList;
    invoke-static {v8}, Lcom/android/internal/telephony/IccCard;->access$1400(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1015
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    goto/16 :goto_0

    .line 1020
    :sswitch_12
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_VIRTUAL_SIM_ON),MTK_GEMINI_SUPPORT on"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1021
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v7

    .line 1022
    .local v7, simId:I
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dual_sim_mode_setting"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1023
    .local v1, dualSimMode:I
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v9, v7, 0x1

    and-int/2addr v9, v1

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v1, v11}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    .line 1030
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1031
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v9, 0x6b

    #calls: Lcom/android/internal/telephony/IccCard;->setNotificationVirtual(I)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$1500(Lcom/android/internal/telephony/IccCard;I)V

    .line 1032
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "AutoAnswer"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1033
    .local v6, shOn:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1034
    .local v3, editorOn:Landroid/content/SharedPreferences$Editor;
    const-string v8, "flag"

    const/4 v9, 0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1035
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1038
    .end local v1           #dualSimMode:I
    .end local v3           #editorOn:Landroid/content/SharedPreferences$Editor;
    .end local v6           #shOn:Landroid/content/SharedPreferences;
    .end local v7           #simId:I
    :sswitch_13
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v8, v8, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1040
    :cond_13
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$1102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardStatus;)Lcom/android/internal/telephony/IccCardStatus;

    .line 1042
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v9, v8, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1043
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;
    invoke-static {v8}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1044
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1045
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "ABSENT"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v9, "ABSENT"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedExtendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v9, 0x6b

    #calls: Lcom/android/internal/telephony/IccCard;->removeNotificationVirtual(I)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;I)V

    .line 1048
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v9, 0x69

    #calls: Lcom/android/internal/telephony/IccCard;->setNotification(I)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$1300(Lcom/android/internal/telephony/IccCard;I)V

    .line 1049
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "AutoAnswer"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1050
    .local v5, shOff:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1051
    .local v2, editorOff:Landroid/content/SharedPreferences$Editor;
    const-string v8, "flag"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1052
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1055
    .end local v2           #editorOff:Landroid/content/SharedPreferences$Editor;
    .end local v5           #shOff:Landroid/content/SharedPreferences;
    :sswitch_14
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v9, "Received Event EVENT_ICC_STATUS_CHANGED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v8, v8, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1059
    :sswitch_15
    iget-object v8, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v9, 0x0

    #calls: Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/IccCard;->access$1700(Lcom/android/internal/telephony/IccCard;Z)V

    goto/16 :goto_0

    .line 834
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_2
        0x7 -> :sswitch_7
        0x8 -> :sswitch_9
        0x9 -> :sswitch_b
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0xc -> :sswitch_14
        0xd -> :sswitch_15
        0xe -> :sswitch_0
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_e
        0x68 -> :sswitch_f
        0x69 -> :sswitch_10
        0x6a -> :sswitch_11
        0x6b -> :sswitch_12
        0x6c -> :sswitch_13
    .end sparse-switch
.end method
