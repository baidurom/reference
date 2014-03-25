.class public abstract Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrxr.java"

# interfaces
.implements Lcom/mediatek/bluetooth/service/IBluetoothPrxr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/service/IBluetoothPrxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.service.IBluetoothPrxr"

.field static final TRANSACTION_disableService:I = 0x4

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_disconnectByAddr:I = 0xa

.field static final TRANSACTION_enableService:I = 0x3

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getProfileManagerState:I = 0x7

.field static final TRANSACTION_getServiceState:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_responseAuthorizeInd:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxr;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxr;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 55
    .local v0, _arg0:Landroid/os/ResultReceiver;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->registerCallback(Landroid/os/ResultReceiver;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/os/ResultReceiver;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ResultReceiver;
    goto :goto_1

    .line 61
    .end local v0           #_arg0:Landroid/os/ResultReceiver;
    :sswitch_2
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 69
    .restart local v0       #_arg0:Landroid/os/ResultReceiver;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->unregisterCallback(Landroid/os/ResultReceiver;)Z

    move-result v2

    .line 70
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Landroid/os/ResultReceiver;
    .end local v2           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ResultReceiver;
    goto :goto_2

    .line 71
    .restart local v2       #_result:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 76
    .end local v0           #_arg0:Landroid/os/ResultReceiver;
    .end local v2           #_result:Z
    :sswitch_3
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->enableService()I

    move-result v2

    .line 78
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v2           #_result:I
    :sswitch_4
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->disableService()I

    move-result v2

    .line 86
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v2           #_result:I
    :sswitch_5
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 94
    .local v2, _result:[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 100
    .end local v2           #_result:[Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->getServiceState()I

    move-result v2

    .line 102
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v2           #_result:I
    :sswitch_7
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->getProfileManagerState(Ljava/lang/String;)I

    move-result v2

    .line 112
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_8
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 123
    .local v1, _arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->responseAuthorizeInd(IB)I

    move-result v2

    .line 124
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0           #_arg0:I
    .end local v1           #_arg1:B
    .end local v2           #_result:I
    :sswitch_9
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->disconnect(I)I

    move-result v2

    .line 134
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_a
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxr$Stub;->disconnectByAddr(Ljava/lang/String;)I

    move-result v2

    .line 144
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
