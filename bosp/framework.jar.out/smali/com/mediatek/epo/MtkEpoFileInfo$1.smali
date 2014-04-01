.class final Lcom/mediatek/epo/MtkEpoFileInfo$1;
.super Ljava/lang/Object;
.source "MtkEpoFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epo/MtkEpoFileInfo;
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
        "Lcom/mediatek/epo/MtkEpoFileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/epo/MtkEpoFileInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 62
    new-instance v0, Lcom/mediatek/epo/MtkEpoFileInfo;

    invoke-direct {v0}, Lcom/mediatek/epo/MtkEpoFileInfo;-><init>()V

    .line 63
    .local v0, fileInfo:Lcom/mediatek/epo/MtkEpoFileInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/epo/MtkEpoFileInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/mediatek/epo/MtkEpoFileInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/epo/MtkEpoFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/epo/MtkEpoFileInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 67
    new-array v0, p1, [Lcom/mediatek/epo/MtkEpoFileInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/mediatek/epo/MtkEpoFileInfo$1;->newArray(I)[Lcom/mediatek/epo/MtkEpoFileInfo;

    move-result-object v0

    return-object v0
.end method
