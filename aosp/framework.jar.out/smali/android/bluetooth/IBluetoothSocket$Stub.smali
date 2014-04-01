.class public abstract Landroid/bluetooth/IBluetoothSocket$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSocket.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSocket$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSocket"

.field static final TRANSACTION_abort:I = 0x8

.field static final TRANSACTION_accept:I = 0x4

.field static final TRANSACTION_available:I = 0x5

.field static final TRANSACTION_bindListen:I = 0x3

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_destroy:I = 0x9

.field static final TRANSACTION_getAddr:I = 0xb

.field static final TRANSACTION_getRealServerChannel:I = 0xc

.field static final TRANSACTION_initSocket:I = 0x1

.field static final TRANSACTION_read:I = 0x6

.field static final TRANSACTION_throwErrno:I = 0xa

.field static final TRANSACTION_write:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocket;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothSocket"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSocket;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/bluetooth/IBluetoothSocket;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothSocket$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothSocket$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v7, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .line 59
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 61
    .local v2, _arg2:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothSocket$Stub;->initSocket(IZZI)I

    move-result v4

    .line 63
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :cond_0
    move v1, v6

    .line 57
    goto :goto_1

    .restart local v1       #_arg1:Z
    :cond_1
    move v2, v6

    .line 59
    goto :goto_2

    .line 69
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    :sswitch_2
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothSocket$Stub;->connect(ILjava/lang/String;I)I

    move-result v4

    .line 77
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v4           #_result:I
    :sswitch_3
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->bindListen(I)I

    move-result v4

    .line 87
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_4
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->accept(II)I

    move-result v4

    .line 99
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_5
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->available(I)I

    move-result v4

    .line 109
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_6
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 119
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 124
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothSocket$Stub;->read([BIII)I

    move-result v4

    .line 125
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 132
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_7
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 136
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothSocket$Stub;->write([BIII)I

    move-result v4

    .line 142
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_8
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->abort(I)I

    move-result v4

    .line 152
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_9
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->destroy(I)I

    move-result v4

    .line 162
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_a
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->throwErrno(II)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_b
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->getAddr(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v6, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->getRealServerChannel(I)I

    move-result v4

    .line 193
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
