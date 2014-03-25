.class Landroid/bluetooth/BluetoothDun$1;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 322
    const-string v0, "Proxy object connected"

    #calls: Landroid/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$000(Ljava/lang/String;)V

    .line 323
    invoke-static {p2}, Landroid/bluetooth/IBluetoothDun$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$102(Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 325
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$200(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$200(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothDun$ServiceListener;->onServiceConnected(Landroid/bluetooth/BluetoothDun;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 330
    const-string v0, "Proxy object disconnected"

    #calls: Landroid/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$000(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$102(Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    .line 332
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$200(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    #getter for: Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->access$200(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothDun$ServiceListener;->onServiceDisconnected()V

    .line 335
    :cond_0
    return-void
.end method
