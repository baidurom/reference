.class Landroid/bluetooth/BluetoothPrxm$1;
.super Ljava/lang/Object;
.source "BluetoothPrxm.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPrxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPrxm;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPrxm;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Landroid/bluetooth/BluetoothPrxm$1;->this$0:Landroid/bluetooth/BluetoothPrxm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/bluetooth/BluetoothPrxm$1;->this$0:Landroid/bluetooth/BluetoothPrxm;

    invoke-static {p2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    move-result-object v1

    iput-object v1, v0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    .line 66
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/bluetooth/BluetoothPrxm$1;->this$0:Landroid/bluetooth/BluetoothPrxm;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    .line 70
    return-void
.end method
