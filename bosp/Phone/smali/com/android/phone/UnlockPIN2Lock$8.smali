.class Lcom/android/phone/UnlockPIN2Lock$8;
.super Landroid/content/BroadcastReceiver;
.source "UnlockPIN2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPIN2Lock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPIN2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock;)V
    .locals 0
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 837
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[BroadcastReceiver][onReceiver][ACTION_AIRPLANE_MODE_CHANGED]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$8;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v1}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 844
    :cond_0
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method
