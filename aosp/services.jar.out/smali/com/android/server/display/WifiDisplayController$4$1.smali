.class Lcom/android/server/display/WifiDisplayController$4$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$4;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$4;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$4;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$720(Lcom/android/server/display/WifiDisplayController;I)I

    .line 343
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$900(Lcom/android/server/display/WifiDisplayController;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4$1;->this$1:Lcom/android/server/display/WifiDisplayController$4;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$502(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto :goto_0
.end method
