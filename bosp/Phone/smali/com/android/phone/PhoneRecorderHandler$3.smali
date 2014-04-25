.class Lcom/android/phone/PhoneRecorderHandler$3;
.super Ljava/lang/Object;
.source "PhoneRecorderHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRecorderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRecorderHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRecorderHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    invoke-static {p2}, Lcom/android/phone/IPhoneRecorder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IPhoneRecorder;

    move-result-object v2

    #setter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneRecorderHandler;->access$102(Lcom/android/phone/PhoneRecorderHandler;Lcom/android/phone/IPhoneRecorder;)Lcom/android/phone/IPhoneRecorder;

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    const-string v2, "onServiceConnected"

    #calls: Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/PhoneRecorderHandler;->access$200(Lcom/android/phone/PhoneRecorderHandler;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;
    invoke-static {v1}, Lcom/android/phone/PhoneRecorderHandler;->access$100(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/IPhoneRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;
    invoke-static {v1}, Lcom/android/phone/PhoneRecorderHandler;->access$100(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/IPhoneRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecordStateListener:Lcom/android/phone/IPhoneRecordStateListener;
    invoke-static {v2}, Lcom/android/phone/PhoneRecorderHandler;->access$300(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/IPhoneRecordStateListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IPhoneRecorder;->listen(Lcom/android/phone/IPhoneRecordStateListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;
    invoke-static {v1}, Lcom/android/phone/PhoneRecorderHandler;->access$100(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/IPhoneRecorder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/phone/IPhoneRecorder;->startRecord()V

    .line 72
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/PhoneRecorderHandler;->access$500(Lcom/android/phone/PhoneRecorderHandler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mRecordDiskCheck:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/phone/PhoneRecorderHandler;->access$400(Lcom/android/phone/PhoneRecorderHandler;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneRecorderHandler"

    const-string v2, "onServiceConnected: couldn\'t register to record service"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler$3;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRecorderHandler;->access$102(Lcom/android/phone/PhoneRecorderHandler;Lcom/android/phone/IPhoneRecorder;)Lcom/android/phone/IPhoneRecorder;

    .line 81
    return-void
.end method
