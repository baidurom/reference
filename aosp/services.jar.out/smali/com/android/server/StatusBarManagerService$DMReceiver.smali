.class Lcom/android/server/StatusBarManagerService$DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StatusBarManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$DMReceiver;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 723
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 724
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    iget-object v1, p1, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 727
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 731
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService$DMReceiver;->this$0:Lcom/android/server/StatusBarManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/StatusBarManagerService;->dmEnable(Z)I

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService$DMReceiver;->this$0:Lcom/android/server/StatusBarManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/StatusBarManagerService;->dmEnable(Z)I

    goto :goto_0
.end method
