.class Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;
.super Landroid/os/Handler;
.source "PowerOnSetupUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PowerOnSetupUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnSetupUnlockSIMLock;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 195
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 196
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 197
    .local v0, LockState:[I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 203
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM1QUERY][SIM1 Status][0][1]+: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v0, v7

    aget v5, v0, v6

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_1
    aput v5, v8, v9

    .line 205
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM1QUERY][SIM1 Status][0][1]-: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    aget v5, v0, v7

    if-ne v5, v12, :cond_0

    .line 209
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iput v7, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 210
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v10, :cond_2

    .line 211
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aput v7, v5, v3

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3           #i:I
    :cond_1
    move v5, v7

    .line 204
    goto :goto_1

    .line 213
    .restart local v3       #i:I
    :cond_2
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    iget-object v10, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v10, v10, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-static {v8, v9, v10}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->resetISIMMELockStatus([I[II)I

    move-result v8

    iput v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 214
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EVENT_SIM1_NETWORK_LOCKED][packageArray][iSIMMELockStatus] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    if-nez v5, :cond_4

    .line 217
    sget-object v5, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v7, v5, v7

    .line 218
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v5, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v5, v5, v6

    if-ne v5, v11, :cond_3

    .line 221
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v4, intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 227
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    #calls: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v5, v7, v11}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$000(Lcom/android/phone/PowerOnSetupUnlockSIMLock;II)V

    .line 228
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 231
    :cond_4
    sget-object v5, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v12, v5, v7

    .line 232
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v6, Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .restart local v4       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 234
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "SIMMELOCKSTATUS"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 239
    const-string v5, "PowerOnSetupUnlockSIMLock "

    const-string v6, "[mHandlerSIMLock][startActivity]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 248
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 252
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM2QUERY][SIM2 Status Ori][0][1]+: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v0, v7

    aget v5, v0, v6

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_3
    aput v5, v8, v9

    .line 254
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[mHandlerSIMLock][SIM2QUERY][SIM2 Status][0][1]-: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    aget v5, v0, v7

    if-ne v5, v12, :cond_0

    .line 258
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iput v7, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 259
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v10, :cond_6

    .line 260
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    aput v7, v5, v3

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3           #i:I
    :cond_5
    move v5, v7

    .line 253
    goto :goto_3

    .line 262
    .restart local v3       #i:I
    :cond_6
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM1MELockStatus:[I

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget-object v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->SIM2MELockStatus:[I

    iget-object v10, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v10, v10, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-static {v8, v9, v10}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->resetISIMMELockStatus([I[II)I

    move-result v8

    iput v8, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    .line 263
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EVENT_SIM2_NETWORK_LOCKED][packageArray][iSIMMELockStatus] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v9, v9, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v5, v5, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    if-nez v5, :cond_8

    .line 266
    sget-object v5, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v7, v5, v6

    .line 267
    const-string v5, "PowerOnSetupUnlockSIMLock "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v5, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v5, v5, v7

    if-ne v5, v11, :cond_7

    .line 270
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v8, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .restart local v4       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 272
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 274
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 276
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    #calls: Lcom/android/phone/PowerOnSetupUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v5, v6, v11}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->access$000(Lcom/android/phone/PowerOnSetupUnlockSIMLock;II)V

    .line 277
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 280
    :cond_8
    sget-object v5, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v12, v5, v6

    .line 281
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    const-class v6, Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v4       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 283
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "SIMMELOCKSTATUS"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMELockStatus:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v5, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v6, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 287
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5, v4}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 288
    iget-object v5, p0, Lcom/android/phone/PowerOnSetupUnlockSIMLock$1;->this$0:Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-virtual {v5}, Lcom/android/phone/PowerOnSetupUnlockSIMLock;->finish()V

    goto/16 :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
