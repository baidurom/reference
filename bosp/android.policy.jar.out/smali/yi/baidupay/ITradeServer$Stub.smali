.class public abstract Lyi/baidupay/ITradeServer$Stub;
.super Landroid/os/Binder;
.source "ITradeServer.java"

# interfaces
.implements Lyi/baidupay/ITradeServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/ITradeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/baidupay/ITradeServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "yi.baidupay.ITradeServer"

.field static final TRANSACTION_checkTradeResult:I = 0x2

.field static final TRANSACTION_createTradeNo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "yi.baidupay.ITradeServer"

    invoke-virtual {p0, p0, v0}, Lyi/baidupay/ITradeServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lyi/baidupay/ITradeServer;
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
    const-string v1, "yi.baidupay.ITradeServer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lyi/baidupay/ITradeServer;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lyi/baidupay/ITradeServer;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lyi/baidupay/ITradeServer$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lyi/baidupay/ITradeServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "yi.baidupay.ITradeServer"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "yi.baidupay.ITradeServer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lyi/baidupay/NewTradeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/baidupay/NewTradeInfo;

    .line 56
    .local v0, _arg0:Lyi/baidupay/NewTradeInfo;
    :goto_1
    new-instance v1, Lyi/baidupay/NewTradeResult;

    invoke-direct {v1}, Lyi/baidupay/NewTradeResult;-><init>()V

    .line 57
    .local v1, _arg1:Lyi/baidupay/NewTradeResult;
    invoke-virtual {p0, v0, v1}, Lyi/baidupay/ITradeServer$Stub;->createTradeNo(Lyi/baidupay/NewTradeInfo;Lyi/baidupay/NewTradeResult;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v1, p3, v3}, Lyi/baidupay/NewTradeResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Lyi/baidupay/NewTradeInfo;
    .end local v1           #_arg1:Lyi/baidupay/NewTradeResult;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lyi/baidupay/NewTradeInfo;
    goto :goto_1

    .line 64
    .restart local v1       #_arg1:Lyi/baidupay/NewTradeResult;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Lyi/baidupay/NewTradeInfo;
    .end local v1           #_arg1:Lyi/baidupay/NewTradeResult;
    :sswitch_2
    const-string v4, "yi.baidupay.ITradeServer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    sget-object v4, Lyi/baidupay/Trade;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/baidupay/Trade;

    .line 78
    .local v0, _arg0:Lyi/baidupay/Trade;
    :goto_2
    invoke-virtual {p0, v0}, Lyi/baidupay/ITradeServer$Stub;->checkTradeResult(Lyi/baidupay/Trade;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Lyi/baidupay/Trade;
    .end local v2           #_result:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lyi/baidupay/Trade;
    goto :goto_2

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
