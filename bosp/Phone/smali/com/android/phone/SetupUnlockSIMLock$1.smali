.class Lcom/android/phone/SetupUnlockSIMLock$1;
.super Landroid/os/Handler;
.source "SetupUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetupUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetupUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/SetupUnlockSIMLock;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 185
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 186
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 187
    .local v0, LockState:[I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 189
    :pswitch_1
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 193
    const-string v5, "SetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM1QUERY][SIM1 Status][0][1]+: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v8, v5, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v0, v7

    aget v5, v0, v6

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_1
    aput v5, v8, v9

    .line 195
    const-string v5, "SetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM1QUERY][SIM1 Status][0][1]-: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v6, v9, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    aget v5, v0, v7

    if-ne v5, v10, :cond_0

    .line 199
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iput v7, v5, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 200
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/4 v5, 0x5

    if-ge v3, v5, :cond_2

    .line 201
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    aput v7, v5, v3

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3           #i:I
    :cond_1
    move v5, v7

    .line 194
    goto :goto_1

    .line 203
    .restart local v3       #i:I
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v6, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    iget-object v8, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    invoke-static {v6, v8, v7}, Lcom/android/phone/SetupUnlockSIMLock;->resetISIMMELockStatus([I[II)I

    move-result v6

    iput v6, v5, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 206
    const-string v5, "SetupUnlockSIMLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EVENT_SIM1_NETWORK_LOCKED][packageArray][iSIMMELockStatus] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget v7, v7, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget v5, v5, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    if-nez v5, :cond_3

    .line 209
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/SetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 212
    :cond_3
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    const-class v6, Lcom/android/phone/UnlockSIMLock;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v4, intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "SIMMELOCKSTATUS"

    iget-object v6, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 218
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/SetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 219
    const-string v5, "SetupUnlockSIMLock "

    const-string v6, "[mHandlerSIMLock][startActivity]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/SetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 228
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 232
    const-string v5, "SetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM2QUERY][SIM2 Status Ori][0][1]+: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v8, v5, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v0, v7

    aget v5, v0, v6

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_3
    aput v5, v8, v9

    .line 234
    const-string v5, "SetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM2QUERY][SIM2 Status][0][1]-: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    aget v5, v0, v7

    if-ne v5, v10, :cond_0

    .line 238
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iput v7, v5, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 239
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/SetupUnlockSIMLock;->SIM1MELockStatus:[I

    iget-object v8, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/SetupUnlockSIMLock;->SIM2MELockStatus:[I

    invoke-static {v7, v8, v6}, Lcom/android/phone/SetupUnlockSIMLock;->resetISIMMELockStatus([I[II)I

    move-result v6

    iput v6, v5, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 240
    const-string v5, "SetupUnlockSIMLock "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EVENT_SIM2_NETWORK_LOCKED][packageArray][iSIMMELockStatus] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget v7, v7, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget v5, v5, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    if-nez v5, :cond_5

    .line 243
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/SetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 233
    goto :goto_3

    .line 246
    :cond_5
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    const-class v6, Lcom/android/phone/UnlockSIMLock;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .restart local v4       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 248
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "SIMMELOCKSTATUS"

    iget-object v6, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v6, Lcom/android/phone/SetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 252
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/SetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 253
    iget-object v5, p0, Lcom/android/phone/SetupUnlockSIMLock$1;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/SetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
