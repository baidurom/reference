.class Lcom/android/phone/PhoneRecorderServices$2;
.super Ljava/lang/Object;
.source "PhoneRecorderServices.java"

# interfaces
.implements Lcom/android/phone/Recorder$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRecorderServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRecorderServices;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRecorderServices;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4
    .parameter "error"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iget-object v1, v1, Lcom/android/phone/PhoneRecorderServices;->mStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const-string v2, "onError"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iget-object v1, v1, Lcom/android/phone/PhoneRecorderServices;->mStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    invoke-interface {v1, p1}, Lcom/android/phone/IPhoneRecordStateListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RecorderServices"

    const-string v2, "PhoneRecordService: call listener onError() failed"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorderStatus:I
    invoke-static {v3}, Lcom/android/phone/PhoneRecorderServices;->access$100(Lcom/android/phone/PhoneRecorderServices;)I

    move-result v2

    .line 103
    .local v2, iPreviousStatus:I
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #setter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorderStatus:I
    invoke-static {v3, p1}, Lcom/android/phone/PhoneRecorderServices;->access$102(Lcom/android/phone/PhoneRecorderServices;I)I

    .line 104
    if-eq v2, p1, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.VoiceRecorder.STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneRecorderServices;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iget-object v3, v3, Lcom/android/phone/PhoneRecorderServices;->mStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    if-eqz v3, :cond_0

    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const-string v4, "onStateChanged"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/android/phone/PhoneRecorderServices$2;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iget-object v3, v3, Lcom/android/phone/PhoneRecorderServices;->mStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    invoke-interface {v3, p1}, Lcom/android/phone/IPhoneRecordStateListener;->onStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v0       #broadcastIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "RecorderServices"

    const-string v4, "PhoneRecordService: call listener onStateChange failed"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
