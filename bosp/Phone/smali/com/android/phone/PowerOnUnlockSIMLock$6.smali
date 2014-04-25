.class Lcom/android/phone/PowerOnUnlockSIMLock$6;
.super Landroid/content/BroadcastReceiver;
.source "PowerOnUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PowerOnUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PowerOnUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V
    .locals 0
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$6;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 888
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$6;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 891
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$6;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/16 v2, 0x1f7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendVerifyResult(IZ)V

    .line 893
    :cond_0
    return-void
.end method
