.class public abstract Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;
.super Landroid/os/Binder;
.source "INotificationDefenseService.java"

# interfaces
.implements Lcom/baidu/notificationdefense/INotificationDefenseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/notificationdefense/INotificationDefenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/notificationdefense/INotificationDefenseService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.notificationdefense.INotificationDefenseService"

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x3

.field static final TRANSACTION_defense:I = 0x1

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.baidu.notificationdefense.INotificationDefenseService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/notificationdefense/INotificationDefenseService;
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
    const-string v1, "com.baidu.notificationdefense.INotificationDefenseService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/notificationdefense/INotificationDefenseService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/baidu/notificationdefense/INotificationDefenseService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v4, "com.baidu.notificationdefense.INotificationDefenseService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.baidu.notificationdefense.INotificationDefenseService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 63
    .local v2, _arg2:Landroid/app/Notification;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;->defense(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v3

    .line 64
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v2           #_arg2:Landroid/app/Notification;
    .end local v3           #_result:Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/app/Notification;
    goto :goto_1

    .line 70
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/app/Notification;
    :sswitch_2
    const-string v6, "com.baidu.notificationdefense.INotificationDefenseService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v5

    .line 75
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg1:Z
    :cond_2
    move v1, v4

    .line 74
    goto :goto_2

    .line 81
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.baidu.notificationdefense.INotificationDefenseService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z

    move-result v3

    .line 85
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
