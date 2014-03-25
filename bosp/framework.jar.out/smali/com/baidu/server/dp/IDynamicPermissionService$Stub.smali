.class public abstract Lcom/baidu/server/dp/IDynamicPermissionService$Stub;
.super Landroid/os/Binder;
.source "IDynamicPermissionService.java"

# interfaces
.implements Lcom/baidu/server/dp/IDynamicPermissionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/IDynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/server/dp/IDynamicPermissionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.server.dp.IDynamicPermissionService"

.field static final TRANSACTION_checkCallPermission:I = 0xc

.field static final TRANSACTION_checkPermissionSync:I = 0xd

.field static final TRANSACTION_checkSendSmsPermission:I = 0xb

.field static final TRANSACTION_isOn:I = 0x1

.field static final TRANSACTION_isPreInstalled:I = 0x6

.field static final TRANSACTION_isTrusted:I = 0x4

.field static final TRANSACTION_queryPackagePermission:I = 0x8

.field static final TRANSACTION_queryPermission:I = 0x7

.field static final TRANSACTION_savePackage:I = 0xe

.field static final TRANSACTION_setPermission:I = 0x9

.field static final TRANSACTION_setPermissionWithSrc:I = 0xa

.field static final TRANSACTION_setTrusted:I = 0x5

.field static final TRANSACTION_turnOff:I = 0x3

.field static final TRANSACTION_turnOn:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.baidu.server.dp.IDynamicPermissionService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/server/dp/IDynamicPermissionService;
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
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/server/dp/IDynamicPermissionService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/baidu/server/dp/IDynamicPermissionService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/baidu/server/dp/IDynamicPermissionService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 224
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->isOn()Z

    move-result v14

    .line 54
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v14, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 60
    .end local v14           #_result:Z
    :sswitch_2
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->turnOn()V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->turnOff()V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->isTrusted(Ljava/lang/String;)Z

    move-result v14

    .line 78
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v14, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 84
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_5
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 89
    .local v3, _arg1:Z
    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->setTrusted(Ljava/lang/String;Z)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    .end local v3           #_arg1:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 95
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->isPreInstalled(Ljava/lang/String;)Z

    move-result v14

    .line 99
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v14, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 100
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 105
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_7
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->queryPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 111
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 117
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_8
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->queryPackagePermission(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 121
    .local v14, _result:Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v14           #_result:Ljava/util/Map;
    :sswitch_9
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, _arg1:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 134
    .local v4, _arg2:[I
    invoke-virtual {p0, v2, v3, v4}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->setPermission(Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 140
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:[Ljava/lang/String;
    .end local v4           #_arg2:[I
    :sswitch_a
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 146
    .restart local v3       #_arg1:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 148
    .restart local v4       #_arg2:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 149
    .local v6, _arg3:B
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 155
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:[Ljava/lang/String;
    .end local v4           #_arg2:[I
    .end local v6           #_arg3:B
    :sswitch_b
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 163
    .local v4, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    sget-object v1, Lcom/baidu/server/dp/SmsTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/server/dp/SmsTransaction;

    .local v6, _arg3:Lcom/baidu/server/dp/SmsTransaction;
    :goto_5
    move-object v1, p0

    .line 169
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->checkSendSmsPermission(IIJLcom/baidu/server/dp/SmsTransaction;)I

    move-result v14

    .line 170
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 167
    .end local v6           #_arg3:Lcom/baidu/server/dp/SmsTransaction;
    .end local v14           #_result:I
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #_arg3:Lcom/baidu/server/dp/SmsTransaction;
    goto :goto_5

    .line 176
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:J
    .end local v6           #_arg3:Lcom/baidu/server/dp/SmsTransaction;
    :sswitch_c
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 184
    .restart local v4       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    sget-object v1, Lcom/baidu/server/dp/CallTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/server/dp/CallTransaction;

    .local v6, _arg3:Lcom/baidu/server/dp/CallTransaction;
    :goto_6
    move-object v1, p0

    .line 190
    invoke-virtual/range {v1 .. v6}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->checkCallPermission(IIJLcom/baidu/server/dp/CallTransaction;)I

    move-result v14

    .line 191
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 188
    .end local v6           #_arg3:Lcom/baidu/server/dp/CallTransaction;
    .end local v14           #_result:I
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #_arg3:Lcom/baidu/server/dp/CallTransaction;
    goto :goto_6

    .line 197
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:J
    .end local v6           #_arg3:Lcom/baidu/server/dp/CallTransaction;
    :sswitch_d
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 207
    .local v11, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/server/dp/ISyncTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/server/dp/ISyncTransport;

    move-result-object v13

    .local v13, _arg4:Lcom/baidu/server/dp/ISyncTransport;
    move-object v7, p0

    move v8, v2

    move v9, v3

    move-object v10, v4

    .line 208
    invoke-virtual/range {v7 .. v13}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->checkPermissionSync(IILjava/lang/String;JLcom/baidu/server/dp/ISyncTransport;)I

    move-result v14

    .line 209
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 215
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v11           #_arg3:J
    .end local v13           #_arg4:Lcom/baidu/server/dp/ISyncTransport;
    .end local v14           #_result:I
    :sswitch_e
    const-string v1, "com.baidu.server.dp.IDynamicPermissionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;->savePackage(Ljava/lang/String;)I

    move-result v14

    .line 219
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
