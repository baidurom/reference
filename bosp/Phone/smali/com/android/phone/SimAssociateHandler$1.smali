.class Lcom/android/phone/SimAssociateHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SimAssociateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimAssociateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimAssociateHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/SimAssociateHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/SimAssociateHandler$1;->this$0:Lcom/android/phone/SimAssociateHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.contacts.associate_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/phone/SimAssociateHandler$1;->this$0:Lcom/android/phone/SimAssociateHandler;

    const-string v2, "RCV associated sim changed!"

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/phone/SimAssociateHandler$1;->this$0:Lcom/android/phone/SimAssociateHandler;

    iget-object v1, v1, Lcom/android/phone/SimAssociateHandler;->mMyHandler:Lcom/android/phone/SimAssociateHandler$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimAssociateHandler$MyHandler;->sendEmptyMessage(I)Z

    .line 55
    :cond_0
    return-void
.end method
