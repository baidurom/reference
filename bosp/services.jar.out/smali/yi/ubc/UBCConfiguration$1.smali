.class final Lyi/ubc/UBCConfiguration$1;
.super Ljava/lang/Object;
.source "UBCConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/ubc/UBCConfiguration;
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
        "Lyi/ubc/UBCConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lyi/ubc/UBCConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lyi/ubc/UBCConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lyi/ubc/UBCConfiguration;
    .locals 1
    .parameter "source"

    .prologue
    .line 27
    new-instance v0, Lyi/ubc/UBCConfiguration;

    invoke-direct {v0, p1}, Lyi/ubc/UBCConfiguration;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lyi/ubc/UBCConfiguration$1;->newArray(I)[Lyi/ubc/UBCConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lyi/ubc/UBCConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 22
    new-array v0, p1, [Lyi/ubc/UBCConfiguration;

    return-object v0
.end method
