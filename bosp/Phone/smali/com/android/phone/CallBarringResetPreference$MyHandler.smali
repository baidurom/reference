.class Lcom/android/phone/CallBarringResetPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringResetPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringResetPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_SET_CALLBARRING_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringResetPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallBarringResetPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallBarringResetPreference;Lcom/android/phone/CallBarringResetPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringResetPreference$MyHandler;-><init>(Lcom/android/phone/CallBarringResetPreference;)V

    return-void
.end method

.method private handleSetCallBarringResponse(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 187
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 189
    const-string v6, "CallBarringResetPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSetCallBarringResponse: ar.exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 193
    .local v2, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_1

    .line 194
    const/16 v3, 0x2bc

    .line 200
    .local v3, errorid:I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/CallBarringResetPreference;->access$300(Lcom/android/phone/CallBarringResetPreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/android/phone/CallBarringInterface;->setErrorState(I)V

    .line 201
    iget-object v6, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/CallBarringResetPreference;->access$400(Lcom/android/phone/CallBarringResetPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    invoke-interface {v6, v7, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 228
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v3           #errorid:I
    :cond_0
    :goto_1
    return-void

    .line 195
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_2

    .line 196
    const/16 v3, 0x320

    .restart local v3       #errorid:I
    goto :goto_0

    .line 198
    .end local v3           #errorid:I
    :cond_2
    const/16 v3, 0x12c

    .restart local v3       #errorid:I
    goto :goto_0

    .line 206
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v3           #errorid:I
    :cond_3
    const-string v6, "CallBarringResetPreference"

    const-string v7, "handleSetCallBarringResponse is called without exception"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v6, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/CallBarringResetPreference;->access$300(Lcom/android/phone/CallBarringResetPreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v6

    instance-of v6, v6, Lcom/android/phone/CallBarring;

    if-eqz v6, :cond_4

    .line 211
    iget-object v6, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/CallBarringResetPreference;->access$300(Lcom/android/phone/CallBarringResetPreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarring;

    .line 212
    .local v1, cb:Lcom/android/phone/CallBarring;
    invoke-virtual {v1}, Lcom/android/phone/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 213
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const-string v6, "all_outing_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallBarringBasePreference;

    .line 216
    .local v4, mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;
    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v1, v8}, Lcom/android/phone/CallBarring;->resetIndex(I)V

    .line 219
    iget-object v6, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mSimId:I
    invoke-static {v6}, Lcom/android/phone/CallBarringResetPreference;->access$500(Lcom/android/phone/CallBarringResetPreference;)I

    move-result v6

    invoke-virtual {v4, v1, v8, v6}, Lcom/android/phone/CallBarringBasePreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_1

    .line 224
    .end local v1           #cb:Lcom/android/phone/CallBarring;
    .end local v4           #mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;
    .end local v5           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/CallBarringResetPreference;->access$300(Lcom/android/phone/CallBarringResetPreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/phone/CallBarringInterface;->doCancelAllState()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v0}, Lcom/android/phone/CallBarringResetPreference;->access$400(Lcom/android/phone/CallBarringResetPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringResetPreference;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringResetPreference$MyHandler;->handleSetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
