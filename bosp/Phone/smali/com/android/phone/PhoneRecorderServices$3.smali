.class Lcom/android/phone/PhoneRecorderServices$3;
.super Lcom/android/phone/IPhoneRecorder$Stub;
.source "PhoneRecorderServices.java"


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
    .line 130
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    invoke-direct {p0}, Lcom/android/phone/IPhoneRecorder$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public listen(Lcom/android/phone/IPhoneRecordStateListener;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const-string v1, "listen"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iput-object p1, v0, Lcom/android/phone/PhoneRecorderServices;->mStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    .line 136
    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const-string v1, "remove"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PhoneRecorderServices;->mStateListener:Lcom/android/phone/IPhoneRecordStateListener;

    .line 141
    return-void
.end method

.method public startRecord()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const-string v1, "startRecord"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderServices;->access$200(Lcom/android/phone/PhoneRecorderServices;)Lcom/android/phone/PhoneRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderServices;->access$200(Lcom/android/phone/PhoneRecorderServices;)Lcom/android/phone/PhoneRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iget-boolean v1, v1, Lcom/android/phone/PhoneRecorderServices;->mIsStoreToSdcard:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorder;->setExternalStorage(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderServices;->access$200(Lcom/android/phone/PhoneRecorderServices;)Lcom/android/phone/PhoneRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iget-object v1, v1, Lcom/android/phone/PhoneRecorderServices;->mCallerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    iget-object v2, v2, Lcom/android/phone/PhoneRecorderServices;->callerPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneRecorder;->setCallerName(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderServices;->access$200(Lcom/android/phone/PhoneRecorderServices;)Lcom/android/phone/PhoneRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneRecorder;->startRecord()V

    .line 150
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const-string v1, "stopRecord"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderServices;->access$200(Lcom/android/phone/PhoneRecorderServices;)Lcom/android/phone/PhoneRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderServices;->access$200(Lcom/android/phone/PhoneRecorderServices;)Lcom/android/phone/PhoneRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    #getter for: Lcom/android/phone/PhoneRecorderServices;->mMount:Z
    invoke-static {v1}, Lcom/android/phone/PhoneRecorderServices;->access$000(Lcom/android/phone/PhoneRecorderServices;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRecorder;->stopRecord(Z)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$3;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneRecorderServices;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRecorderServices;->access$202(Lcom/android/phone/PhoneRecorderServices;Lcom/android/phone/PhoneRecorder;)Lcom/android/phone/PhoneRecorder;

    .line 158
    return-void
.end method
