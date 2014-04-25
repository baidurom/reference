.class Lcom/android/phone/UnlockPUKLock$6;
.super Ljava/lang/Thread;
.source "UnlockPUKLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPUKLock;->unlockPUK(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;

.field final synthetic val$strPUK:Ljava/lang/String;

.field final synthetic val$strPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$6;->this$0:Lcom/android/phone/UnlockPUKLock;

    iput-object p2, p0, Lcom/android/phone/UnlockPUKLock$6;->val$strPUK:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/UnlockPUKLock$6;->val$strPwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 857
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][new Thread][Run]+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :try_start_0
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][TogetResult][strPUK]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$6;->val$strPUK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][TogetResult][strPIN]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$6;->val$strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 862
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$6;->val$strPUK:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$6;->val$strPwd:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Lcom/android/phone/UnlockPUKLock;->access$102(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_0
    :goto_0
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unlockPUK][Gemini Card][SIM1][mHandler][Result] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/UnlockPUKLock;->access$100()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v2, "UnlockPUKLock "

    const-string v3, "[unlockPUK][Gemini Card][SIM1][mHandler][Result] -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v2, p0, Lcom/android/phone/UnlockPUKLock$6;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPUKLock;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 870
    .local v0, msg3:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 871
    return-void

    .line 864
    .end local v0           #msg3:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 865
    .local v1, re:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
