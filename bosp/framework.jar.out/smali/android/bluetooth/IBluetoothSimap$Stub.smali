.class public abstract Landroid/bluetooth/IBluetoothSimap$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSimap.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSimap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSimap"

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_disableService:I = 0x2

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_enableService:I = 0x1

.field static final TRANSACTION_getClient:I = 0x4

.field static final TRANSACTION_getSIMIndex:I = 0x9

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_isConnected:I = 0x7

.field static final TRANSACTION_isServiceStarted:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_selectSIM:I = 0x8

.field static final TRANSACTION_startSimapService:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSimap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSimap;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothSimap"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothSimap;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothSimap$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothSimap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->enableService()Z

    move-result v1

    .line 54
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v1           #_result:Z
    :sswitch_2
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->disableService()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->getState()I

    move-result v1

    .line 69
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v1           #_result:I
    :sswitch_4
    const-string v4, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->getClient()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 77
    .local v1, _result:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v1, p3, v3}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v1           #_result:Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v4, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 97
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSimap$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 98
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_result:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 104
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->disconnect()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    :sswitch_7
    const-string v4, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 114
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 119
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSimap$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 120
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_result:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 126
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string v4, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSimap$Stub;->selectSIM(I)Z

    move-result v1

    .line 130
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_9
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->getSIMIndex()I

    move-result v1

    .line 138
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v1           #_result:I
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothSimapCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSimapCallback;

    move-result-object v0

    .line 147
    .local v0, _arg0:Landroid/bluetooth/IBluetoothSimapCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSimap$Stub;->registerCallback(Landroid/bluetooth/IBluetoothSimapCallback;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    .end local v0           #_arg0:Landroid/bluetooth/IBluetoothSimapCallback;
    :sswitch_b
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothSimapCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSimapCallback;

    move-result-object v0

    .line 156
    .restart local v0       #_arg0:Landroid/bluetooth/IBluetoothSimapCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSimap$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothSimapCallback;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:Landroid/bluetooth/IBluetoothSimapCallback;
    :sswitch_c
    const-string v4, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->isServiceStarted()Z

    move-result v1

    .line 164
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v1           #_result:Z
    :sswitch_d
    const-string v2, "android.bluetooth.IBluetoothSimap"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSimap$Stub;->startSimapService()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
