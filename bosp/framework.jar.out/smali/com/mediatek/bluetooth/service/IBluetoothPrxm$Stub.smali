.class public abstract Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrxm.java"

# interfaces
.implements Lcom/mediatek/bluetooth/service/IBluetoothPrxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/service/IBluetoothPrxm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.bluetooth.service.IBluetoothPrxm"

.field static final TRANSACTION_configPathLossLevel:I = 0x9

.field static final TRANSACTION_configPathLossThreshold:I = 0xa

.field static final TRANSACTION_connect:I = 0xc

.field static final TRANSACTION_connectByProfileManager:I = 0xb

.field static final TRANSACTION_disconnect:I = 0xd

.field static final TRANSACTION_getConnectedDevices:I = 0x2

.field static final TRANSACTION_getDeviceInfo:I = 0x7

.field static final TRANSACTION_getProfileManagerState:I = 0x8

.field static final TRANSACTION_getRegisteredDevices:I = 0x1

.field static final TRANSACTION_getRemoteCapability:I = 0xe

.field static final TRANSACTION_getRemoteTxPower:I = 0xf

.field static final TRANSACTION_registerDevice:I = 0x3

.field static final TRANSACTION_registerDeviceCallback:I = 0x5

.field static final TRANSACTION_setLinkLoss:I = 0x11

.field static final TRANSACTION_setPathLoss:I = 0x10

.field static final TRANSACTION_unregisterDevice:I = 0x4

.field static final TRANSACTION_unregisterDeviceCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/service/IBluetoothPrxm;
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
    const-string v1, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->getRegisteredDevices()[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v2

    .line 49
    .local v2, _result:[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 55
    .end local v2           #_result:[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :sswitch_2
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 57
    .local v2, _result:[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 63
    .end local v2           #_result:[Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v5, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 71
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->registerDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 72
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 78
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 86
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->unregisterDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 92
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v5, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 102
    .local v1, _arg1:Landroid/os/ResultReceiver;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->registerDeviceCallback(Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    move-result v2

    .line 103
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 100
    .end local v1           #_arg1:Landroid/os/ResultReceiver;
    .end local v2           #_result:Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ResultReceiver;
    goto :goto_3

    .line 109
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/ResultReceiver;
    :sswitch_6
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->unregisterDeviceCallback(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v5, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->getDeviceInfo(Ljava/lang/String;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v2

    .line 122
    .local v2, _result:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v2, :cond_5

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v2, p3, v4}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 128
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    :sswitch_8
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->getProfileManagerState(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_9
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 149
    .local v1, _arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->configPathLossLevel(Ljava/lang/String;B)I

    move-result v2

    .line 150
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:B
    .end local v2           #_result:I
    :sswitch_a
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 161
    .restart local v1       #_arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->configPathLossThreshold(Ljava/lang/String;B)I

    move-result v2

    .line 162
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:B
    .end local v2           #_result:I
    :sswitch_b
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 171
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 176
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->connectByProfileManager(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 177
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 183
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_c
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->connect(Ljava/lang/String;)I

    move-result v2

    .line 187
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_d
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->disconnect(Ljava/lang/String;)I

    move-result v2

    .line 197
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_e
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->getRemoteCapability(Ljava/lang/String;)I

    move-result v2

    .line 207
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_f
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->getRemoteTxPower(Ljava/lang/String;)I

    move-result v2

    .line 217
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_10
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 228
    .restart local v1       #_arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->setPathLoss(Ljava/lang/String;B)I

    move-result v2

    .line 229
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:B
    .end local v2           #_result:I
    :sswitch_11
    const-string v3, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 240
    .restart local v1       #_arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm$Stub;->setLinkLoss(Ljava/lang/String;B)I

    move-result v2

    .line 241
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
