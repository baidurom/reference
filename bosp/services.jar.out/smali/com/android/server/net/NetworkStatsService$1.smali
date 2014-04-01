.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 803
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek.net.datausg.DATA_INFO_WRITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->writeDataUsageHelper()V
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek.net.datausg.DATA_INFO_DEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->clearStatsFiles()V
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;)V

    goto :goto_0
.end method
