.class Lcom/android/phone/UnlockPUKLock$8;
.super Landroid/content/BroadcastReceiver;
.source "UnlockPUKLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUKLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 0
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 991
    const-string v1, "UnlockPUKLock "

    const-string v2, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    const-string v1, "UnlockPUKLock "

    const-string v2, "[BroadcastReceiver][onReceiver][ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$8;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v1}, Lcom/android/phone/UnlockPUKLock;->finish()V

    .line 998
    :cond_0
    const-string v1, "UnlockPUKLock "

    const-string v2, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void
.end method
