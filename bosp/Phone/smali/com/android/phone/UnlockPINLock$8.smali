.class Lcom/android/phone/UnlockPINLock$8;
.super Landroid/content/BroadcastReceiver;
.source "UnlockPINLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPINLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPINLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPINLock;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/phone/UnlockPINLock$8;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 919
    const-string v1, "UnlockPINLock "

    const-string v2, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, action:Ljava/lang/String;
    const-string v1, "UnlockPINLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastReceiver][onReceiver][action] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const-string v1, "UnlockPINLock "

    const-string v2, "[BroadcastReceiver][onReceiver][ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$8;->this$0:Lcom/android/phone/UnlockPINLock;

    const/16 v2, 0x1f5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/UnlockPINLock;->sendVerifyResult(IZ)V

    .line 925
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$8;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v1}, Lcom/android/phone/UnlockPINLock;->finish()V

    .line 928
    :cond_0
    const-string v1, "UnlockPINLock "

    const-string v2, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method
