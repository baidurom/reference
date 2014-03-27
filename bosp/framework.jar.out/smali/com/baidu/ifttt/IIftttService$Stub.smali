.class public abstract Lcom/baidu/ifttt/IIftttService$Stub;
.super Landroid/os/Binder;
.source "IIftttService.java"

# interfaces
.implements Lcom/baidu/ifttt/IIftttService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ifttt/IIftttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/ifttt/IIftttService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.ifttt.IIftttService"

.field static final TRANSACTION_registerTask:I = 0x1

.field static final TRANSACTION_registerTask4Str:I = 0x3

.field static final TRANSACTION_unregisterTask:I = 0x2

.field static final TRANSACTION_unregisterTask4Str:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.baidu.ifttt.IIftttService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/ifttt/IIftttService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/ifttt/IIftttService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.baidu.ifttt.IIftttService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/ifttt/IIftttService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/baidu/ifttt/IIftttService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/baidu/ifttt/IIftttService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/ifttt/IIftttService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v2, "com.baidu.ifttt.IIftttService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.baidu.ifttt.IIftttService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    sget-object v4, Lcom/baidu/ifttt/Task;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ifttt/Task;

    .line 59
    .local v0, _arg0:Lcom/baidu/ifttt/Task;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/ifttt/IIftttService$Stub;->registerTask(Lcom/baidu/ifttt/Task;)Z

    move-result v1

    .line 60
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Lcom/baidu/ifttt/Task;
    .end local v1           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/baidu/ifttt/Task;
    goto :goto_1

    .line 66
    .end local v0           #_arg0:Lcom/baidu/ifttt/Task;
    :sswitch_2
    const-string v4, "com.baidu.ifttt.IIftttService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    sget-object v4, Lcom/baidu/ifttt/Task;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ifttt/Task;

    .line 74
    .restart local v0       #_arg0:Lcom/baidu/ifttt/Task;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/baidu/ifttt/IIftttService$Stub;->unregisterTask(Lcom/baidu/ifttt/Task;)Z

    move-result v1

    .line 75
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:Lcom/baidu/ifttt/Task;
    .end local v1           #_result:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/baidu/ifttt/Task;
    goto :goto_2

    .line 81
    .end local v0           #_arg0:Lcom/baidu/ifttt/Task;
    :sswitch_3
    const-string v4, "com.baidu.ifttt.IIftttService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/ifttt/IIftttService$Stub;->registerTask4Str(Ljava/lang/String;)Z

    move-result v1

    .line 85
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_4
    const-string v4, "com.baidu.ifttt.IIftttService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/ifttt/IIftttService$Stub;->unregisterTask4Str(Ljava/lang/String;)Z

    move-result v1

    .line 95
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
