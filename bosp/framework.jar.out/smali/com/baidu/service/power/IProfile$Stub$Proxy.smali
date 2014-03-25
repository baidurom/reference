.class Lcom/baidu/service/power/IProfile$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProfile.java"

# interfaces
.implements Lcom/baidu/service/power/IProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/power/IProfile$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/baidu/service/power/IProfile$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 66
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/service/power/IProfile$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "com.baidu.service.power.IProfile"

    return-object v0
.end method

.method public getProfileElements(Ljava/util/List;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 81
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.baidu.service.power.IProfile"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/baidu/service/power/IProfile$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .local v2, _result:I
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 91
    return v2

    .line 88
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
