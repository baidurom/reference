.class Landroid/bluetooth/BluetoothPbap$2;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 302
    const-string v0, "Proxy object connected"

    #calls: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 304
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 309
    const-string v0, "Proxy object disconnected"

    #calls: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 311
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceDisconnected()V

    .line 314
    :cond_0
    return-void
.end method
