.class Lcom/android/phone/PhoneRecorderServices$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 29
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderServices$1;->this$0:Lcom/android/phone/PhoneRecorderServices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$1;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneRecorderServices;->mMount:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRecorderServices;->access$002(Lcom/android/phone/PhoneRecorderServices;Z)Z

    .line 34
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$1;->this$0:Lcom/android/phone/PhoneRecorderServices;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRecorderServices;->stopSelf()V

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderServices$1;->this$0:Lcom/android/phone/PhoneRecorderServices;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/PhoneRecorderServices;->mMount:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRecorderServices;->access$002(Lcom/android/phone/PhoneRecorderServices;Z)Z

    goto :goto_0
.end method
