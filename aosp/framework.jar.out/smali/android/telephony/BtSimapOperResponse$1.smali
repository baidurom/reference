.class final Landroid/telephony/BtSimapOperResponse$1;
.super Ljava/lang/Object;
.source "BtSimapOperResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BtSimapOperResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/BtSimapOperResponse;
    .locals 1
    .parameter "in"

    .prologue
    .line 200
    new-instance v0, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v0, p1}, Landroid/telephony/BtSimapOperResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Landroid/telephony/BtSimapOperResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/BtSimapOperResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/BtSimapOperResponse;
    .locals 1
    .parameter "size"

    .prologue
    .line 204
    new-array v0, p1, [Landroid/telephony/BtSimapOperResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Landroid/telephony/BtSimapOperResponse$1;->newArray(I)[Landroid/telephony/BtSimapOperResponse;

    move-result-object v0

    return-object v0
.end method
