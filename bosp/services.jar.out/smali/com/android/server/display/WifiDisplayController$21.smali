.class Lcom/android/server/display/WifiDisplayController$21;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->checkA2dpStatus()V
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
    .line 2710
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2714
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 2715
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2717
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 2718
    .local v2, empty:Z
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothProfile listener is connected, empty:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    if-nez v2, :cond_0

    .line 2722
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x6

    #calls: Lcom/android/server/display/WifiDisplayController;->showDialog(I)V
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$7200(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2724
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 2728
    return-void
.end method
