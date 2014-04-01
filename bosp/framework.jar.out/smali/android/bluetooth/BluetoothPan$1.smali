.class Landroid/bluetooth/BluetoothPan$1;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 192
    invoke-static {p2}, Landroid/bluetooth/IBluetoothPan$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$002(Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    .line 193
    const-string v0, "BluetoothPan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected, mService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/bluetooth/BluetoothPan;->access$000()Landroid/bluetooth/IBluetoothPan;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Landroid/bluetooth/BluetoothPan;->access$000()Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    const-string v0, "BluetoothPan"

    const-string v1, "Service connect failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$002(Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    .line 202
    const-string v0, "BluetoothPan"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method
