.class final Landroid/telephony/CellInfo$1;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfo;
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
        "Landroid/telephony/CellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;
    .locals 3
    .parameter "in"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad CellInfo Parcel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :pswitch_0
    invoke-static {p1}, Landroid/telephony/CellInfoGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 202
    :pswitch_1
    invoke-static {p1}, Landroid/telephony/CellInfoCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;

    move-result-object v1

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-static {p1}, Landroid/telephony/CellInfoLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;

    move-result-object v1

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 210
    new-array v0, p1, [Landroid/telephony/CellInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfo$1;->newArray(I)[Landroid/telephony/CellInfo;

    move-result-object v0

    return-object v0
.end method
