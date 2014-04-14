.class public abstract Lcom/baidu/service/power/ISmartPowerService$Stub;
.super Landroid/os/Binder;
.source "ISmartPowerService.java"

# interfaces
.implements Lcom/baidu/service/power/ISmartPowerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/power/ISmartPowerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/service/power/ISmartPowerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.service.power.ISmartPowerService"

.field static final TRANSACTION_applyMode:I = 0x4

.field static final TRANSACTION_applyPolicy:I = 0x5

.field static final TRANSACTION_getPolicys:I = 0x3

.field static final TRANSACTION_getPowerModeList:I = 0x1

.field static final TRANSACTION_getProfile:I = 0x2

.field static final TRANSACTION_unapplyPolicy:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/service/power/ISmartPowerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/service/power/ISmartPowerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.baidu.service.power.ISmartPowerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/service/power/ISmartPowerService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/baidu/service/power/ISmartPowerService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/baidu/service/power/ISmartPowerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/service/power/ISmartPowerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v1}, Lcom/baidu/service/power/ISmartPowerService$Stub;->getPowerModeList(Ljava/util/List;)I

    move-result v2

    .line 52
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    .line 59
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v2           #_result:I
    :sswitch_2
    const-string v4, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/baidu/service/power/ISmartPowerService$Stub;->getProfile(I)Landroid/os/IBinder;

    move-result-object v2

    .line 63
    .local v2, _result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:I
    .end local v2           #_result:Landroid/os/IBinder;
    :sswitch_3
    const-string v4, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v1}, Lcom/baidu/service/power/ISmartPowerService$Stub;->getPolicys(Ljava/util/List;)I

    move-result v2

    .line 73
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    .line 80
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v2           #_result:I
    :sswitch_4
    const-string v4, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/baidu/service/power/ISmartPowerService$Stub;->applyMode(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v4, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/baidu/service/power/ISmartPowerService$Stub;->applyPolicy(I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v4, "com.baidu.service.power.ISmartPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/baidu/service/power/ISmartPowerService$Stub;->unapplyPolicy(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
