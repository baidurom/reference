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
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 48
    :sswitch_0
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v8, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v2, v7

    .line 59
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v3, v7

    .line 61
    .local v3, _arg2:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 63
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .local v5, _arg4:Landroid/os/IBinder;
    move-object v0, p0

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothSocket$Stub;->initSocket(IZZILandroid/os/IBinder;)I

    move-result v6

    .line 65
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Landroid/os/IBinder;
    .end local v6           #_result:I
    :cond_0
    move v2, v0

    .line 57
    goto :goto_1

    .restart local v2       #_arg1:Z
    :cond_1
    move v3, v0

    .line 59
    goto :goto_2

    .line 71
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    :sswitch_2
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothSocket$Stub;->connect(ILjava/lang/String;I)I

    move-result v6

    .line 79
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v6           #_result:I
    :sswitch_3
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->bindListen(I)I

    move-result v6

    .line 89
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_4
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothSocket$Stub;->accept(II)I

    move-result v6

    .line 101
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 107
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_5
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->available(I)I

    move-result v6

    .line 111
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_6
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 121
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 126
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothSocket$Stub;->read([BIII)I

    move-result v6

    .line 127
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 134
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v6           #_result:I
    :sswitch_7
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 138
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 143
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothSocket$Stub;->write([BIII)I

    move-result v6

    .line 144
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v6           #_result:I
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->abort(I)I

    move-result v6

    .line 154
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->destroy(I)I

    move-result v6

    .line 164
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_a
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothSocket$Stub;->throwErrno(II)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_b
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->getAddr(I)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.bluetooth.IBluetoothSocket"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSocket$Stub;->getRealServerChannel(I)I

    move-result v6

    .line 195
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 44
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
