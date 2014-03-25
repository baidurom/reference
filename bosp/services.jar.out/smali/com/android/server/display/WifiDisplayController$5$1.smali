.class Lcom/android/server/display/WifiDisplayController$5$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$5;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$5;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$5;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$1020(Lcom/android/server/display/WifiDisplayController;I)I

    .line 684
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying discovery.  Retries left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1100(Lcom/android/server/display/WifiDisplayController;)V

    .line 694
    :cond_1
    :goto_0
    return-void

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)V

    .line 691
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$802(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto :goto_0
.end method
