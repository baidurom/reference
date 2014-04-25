.class Lcom/android/phone/SetupUnlockSIMLock$2;
.super Landroid/content/BroadcastReceiver;
.source "SetupUnlockSIMLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetupUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetupUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/SetupUnlockSIMLock;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/phone/SetupUnlockSIMLock$2;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/phone/SetupUnlockSIMLock$2;->this$0:Lcom/android/phone/SetupUnlockSIMLock;

    invoke-virtual {v1}, Lcom/android/phone/SetupUnlockSIMLock;->finish()V

    .line 375
    :cond_0
    return-void
.end method
