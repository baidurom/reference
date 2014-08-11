.class public Lcom/android/internal/telephony/BaiduExtPhoneSubInfo;
.super Lcom/android/internal/telephony/PhoneSubInfoProxy;
.source "BaiduExtPhoneSubInfo.java"


# static fields
.field private static final DESTCRIPTOR:Ljava/lang/String; = " com.android.internal.telephony.BaiduExtIPhoneSubInfo"


# instance fields
.field private mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .parameter "phoneSubInfo"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object p1, p0, Lcom/android/internal/telephony/BaiduExtPhoneSubInfo;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    const/16 v1, 0x2712

    if-ne p1, v1, :cond_0

    const-string v1, " com.android.internal.telephony.BaiduExtIPhoneSubInfo"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/BaiduExtPhoneSubInfo;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    .end local v0           #_result:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method
