.class final Lyi/baidupay/Trade$1;
.super Ljava/lang/Object;
.source "Trade.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/Trade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lyi/baidupay/Trade;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lyi/baidupay/Trade$1;->createFromParcel(Landroid/os/Parcel;)Lyi/baidupay/Trade;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lyi/baidupay/Trade;
    .locals 2
    .parameter "in"

    .prologue
    .line 49
    new-instance v0, Lyi/baidupay/Trade;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lyi/baidupay/Trade;-><init>(Landroid/os/Parcel;Lyi/baidupay/Trade$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lyi/baidupay/Trade$1;->newArray(I)[Lyi/baidupay/Trade;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lyi/baidupay/Trade;
    .locals 1
    .parameter "size"

    .prologue
    .line 53
    new-array v0, p1, [Lyi/baidupay/Trade;

    return-object v0
.end method
