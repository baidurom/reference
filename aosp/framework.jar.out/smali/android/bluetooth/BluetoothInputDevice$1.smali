.class Landroid/bluetooth/BluetoothInputDevice$1;
.super Ljava/lang/Object;
.source "BluetoothInputDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$1;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 118
    const-string v0, "BluetoothInputDevice"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p2}, Landroid/bluetooth/IBluetoothHid$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHid;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$002(Landroid/bluetooth/IBluetoothHid;)Landroid/bluetooth/IBluetoothHid;

    .line 120
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 123
    const-string v0, "BluetoothInputDevice"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$002(Landroid/bluetooth/IBluetoothHid;)Landroid/bluetooth/IBluetoothHid;

    .line 125
    return-void
.end method
