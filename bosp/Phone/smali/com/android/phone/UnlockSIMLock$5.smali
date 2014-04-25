.class Lcom/android/phone/UnlockSIMLock$5;
.super Landroid/content/BroadcastReceiver;
.source "UnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockSIMLock;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    const-string v1, "UnlockSIMLock "

    const-string v2, "receive Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    const/16 v2, 0x1f7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 747
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$5;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 749
    :cond_0
    return-void
.end method
