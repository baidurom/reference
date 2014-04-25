.class Lcom/android/phone/UnlockPUK2Lock$8;
.super Landroid/content/BroadcastReceiver;
.source "UnlockPUK2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUK2Lock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;)V
    .locals 0
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$8;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 895
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[BroadcastReceiver][onReceiver][ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$8;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v1}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    .line 902
    :cond_0
    const-string v1, "UnlockPUK2Lock "

    const-string v2, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void
.end method
