.class Lcom/android/phone/CallBarringChangePassword$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringChangePassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringChangePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final EVENT_PASSWORD_CHANGE:I


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringChangePassword;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallBarringChangePassword;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallBarringChangePassword;Lcom/android/phone/CallBarringChangePassword$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringChangePassword$MyHandler;-><init>(Lcom/android/phone/CallBarringChangePassword;)V

    return-void
.end method

.method private handlePasswordChanged(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 214
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    #getter for: Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringChangePassword;->access$100(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    #getter for: Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringChangePassword;->access$100(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 220
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 221
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 223
    const-string v3, "Settings/CallChangePassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePasswordChanged: ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    #getter for: Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringChangePassword;->access$100(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 226
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 227
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    .line 228
    const/16 v2, 0x2bc

    .line 234
    .local v2, errorid:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    #getter for: Lcom/android/phone/CallBarringChangePassword;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v3}, Lcom/android/phone/CallBarringChangePassword;->access$200(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/CallBarringInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/phone/CallBarringInterface;->setErrorState(I)V

    .line 235
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    #getter for: Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringChangePassword;->access$100(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 251
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #errorid:I
    :cond_1
    :goto_1
    return-void

    .line 229
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_3

    .line 230
    const/16 v2, 0x320

    .restart local v2       #errorid:I
    goto :goto_0

    .line 232
    .end local v2           #errorid:I
    :cond_3
    const/16 v2, 0x12c

    .restart local v2       #errorid:I
    goto :goto_0

    .line 239
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #errorid:I
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 240
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    #getter for: Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringChangePassword;->access$100(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    #getter for: Lcom/android/phone/CallBarringChangePassword;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/CallBarringChangePassword;->access$100(Lcom/android/phone/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    const/16 v5, 0x190

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 246
    :cond_5
    const-string v3, "Settings/CallChangePassword"

    const-string v4, "handlePasswordChanged is called without exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/android/phone/CallBarringChangePassword$MyHandler;->this$0:Lcom/android/phone/CallBarringChangePassword;

    const v4, 0x7f0b0288

    #calls: Lcom/android/phone/CallBarringChangePassword;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/CallBarringChangePassword;->access$300(Lcom/android/phone/CallBarringChangePassword;I)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 207
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringChangePassword$MyHandler;->handlePasswordChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
