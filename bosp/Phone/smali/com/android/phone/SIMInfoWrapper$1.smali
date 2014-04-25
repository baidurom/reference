.class Lcom/android/phone/SIMInfoWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "SIMInfoWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SIMInfoWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SIMInfoWrapper;


# direct methods
.method constructor <init>(Lcom/android/phone/SIMInfoWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    iget-object v2, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    #getter for: Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/SIMInfoWrapper;->access$000(Lcom/android/phone/SIMInfoWrapper;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/phone/SIMInfoWrapper;->updateSimInfo(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/phone/SIMInfoWrapper;->access$100(Lcom/android/phone/SIMInfoWrapper;Landroid/content/Context;)V

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    iget-object v2, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    #getter for: Lcom/android/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/SIMInfoWrapper;->access$000(Lcom/android/phone/SIMInfoWrapper;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/phone/SIMInfoWrapper;->updateSimInfo(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/phone/SIMInfoWrapper;->access$100(Lcom/android/phone/SIMInfoWrapper;Landroid/content/Context;)V

    .line 45
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    #getter for: Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v1}, Lcom/android/phone/SIMInfoWrapper;->access$200(Lcom/android/phone/SIMInfoWrapper;)Landroid/widget/CursorAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    #getter for: Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v1}, Lcom/android/phone/SIMInfoWrapper;->access$200(Lcom/android/phone/SIMInfoWrapper;)Landroid/widget/CursorAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    #getter for: Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v1}, Lcom/android/phone/SIMInfoWrapper;->access$200(Lcom/android/phone/SIMInfoWrapper;)Landroid/widget/CursorAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/android/phone/SIMInfoWrapper$1;->this$0:Lcom/android/phone/SIMInfoWrapper;

    #getter for: Lcom/android/phone/SIMInfoWrapper;->mAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v1}, Lcom/android/phone/SIMInfoWrapper;->access$200(Lcom/android/phone/SIMInfoWrapper;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
