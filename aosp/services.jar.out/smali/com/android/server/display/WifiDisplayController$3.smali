.class Lcom/android/server/display/WifiDisplayController$3;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 598
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set WFD info with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 601
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 576
    const-string v0, "WifiDisplayController"

    const-string v1, "Successfully set WFD info."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 580
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->access$302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 581
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$502(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 588
    const-string v0, "WifiDisplayController"

    const-string v1, "scan after enable wifi automatically."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestScan()V

    .line 593
    :cond_0
    return-void
.end method
