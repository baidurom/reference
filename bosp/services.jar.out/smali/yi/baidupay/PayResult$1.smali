.class final Lyi/baidupay/PayResult$1;
.super Ljava/lang/Object;
.source "PayResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/PayResult;
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
        "Lyi/baidupay/PayResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lyi/baidupay/PayResult$1;->createFromParcel(Landroid/os/Parcel;)Lyi/baidupay/PayResult;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lyi/baidupay/PayResult;
    .locals 2
    .parameter "in"

    .prologue
    .line 50
    new-instance v0, Lyi/baidupay/PayResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lyi/baidupay/PayResult;-><init>(Landroid/os/Parcel;Lyi/baidupay/PayResult$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lyi/baidupay/PayResult$1;->newArray(I)[Lyi/baidupay/PayResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lyi/baidupay/PayResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 54
    new-array v0, p1, [Lyi/baidupay/PayResult;

    return-object v0
.end method
