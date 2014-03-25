.class public abstract Lcom/baidu/service/IQuickBootService$Stub;
.super Landroid/os/Binder;
.source "IQuickBootService.java"

# interfaces
.implements Lcom/baidu/service/IQuickBootService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/IQuickBootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/service/IQuickBootService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.service.IQuickBootService"

.field static final TRANSACTION_enableQuickBootService:I = 0x1

.field static final TRANSACTION_notifyBatteryStatus:I = 0x5

.field static final TRANSACTION_notifyPowerLongPress:I = 0x2

.field static final TRANSACTION_notifyPowerPressOnce:I = 0x4

.field static final TRANSACTION_notifyPowerShortPress:I = 0x3

.field static final TRANSACTION_notifyQuickBootComplete:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.baidu.service.IQuickBootService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/service/IQuickBootService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/service/IQuickBootService;
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
    const-string v1, "com.baidu.service.IQuickBootService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/service/IQuickBootService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/baidu/service/IQuickBootService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/baidu/service/IQuickBootService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/service/IQuickBootService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "com.baidu.service.IQuickBootService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.baidu.service.IQuickBootService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 53
    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/service/IQuickBootService$Stub;->enableQuickBootService(IJ)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:I
    .end local v1           #_arg1:J
    :sswitch_2
    const-string v4, "com.baidu.service.IQuickBootService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/baidu/service/IQuickBootService$Stub;->notifyPowerLongPress()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    :sswitch_3
    const-string v4, "com.baidu.service.IQuickBootService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/baidu/service/IQuickBootService$Stub;->notifyPowerShortPress()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :sswitch_4
    const-string v4, "com.baidu.service.IQuickBootService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/baidu/service/IQuickBootService$Stub;->notifyPowerPressOnce()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v4, "com.baidu.service.IQuickBootService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 85
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/baidu/service/IQuickBootService$Stub;->notifyBatteryStatus(IZ)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v1           #_arg1:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 91
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v4, "com.baidu.service.IQuickBootService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/baidu/service/IQuickBootService$Stub;->notifyQuickBootComplete()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
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
