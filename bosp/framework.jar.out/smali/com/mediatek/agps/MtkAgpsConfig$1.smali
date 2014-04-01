.class final Lcom/mediatek/agps/MtkAgpsConfig$1;
.super Ljava/lang/Object;
.source "MtkAgpsConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsConfig;
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
        "Lcom/mediatek/agps/MtkAgpsConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/agps/MtkAgpsConfig;
    .locals 1
    .parameter "in"

    .prologue
    .line 89
    new-instance v0, Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {v0}, Lcom/mediatek/agps/MtkAgpsConfig;-><init>()V

    .line 90
    .local v0, profile:Lcom/mediatek/agps/MtkAgpsConfig;
    invoke-virtual {v0, p1}, Lcom/mediatek/agps/MtkAgpsConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 91
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/mediatek/agps/MtkAgpsConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/agps/MtkAgpsConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/agps/MtkAgpsConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 94
    new-array v0, p1, [Lcom/mediatek/agps/MtkAgpsConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/mediatek/agps/MtkAgpsConfig$1;->newArray(I)[Lcom/mediatek/agps/MtkAgpsConfig;

    move-result-object v0

    return-object v0
.end method
