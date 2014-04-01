.class final Lcom/mediatek/agps/MtkAgpsProfile$1;
.super Ljava/lang/Object;
.source "MtkAgpsProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsProfile;
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
        "Lcom/mediatek/agps/MtkAgpsProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/agps/MtkAgpsProfile;
    .locals 1
    .parameter "in"

    .prologue
    .line 69
    new-instance v0, Lcom/mediatek/agps/MtkAgpsProfile;

    invoke-direct {v0}, Lcom/mediatek/agps/MtkAgpsProfile;-><init>()V

    .line 70
    .local v0, profile:Lcom/mediatek/agps/MtkAgpsProfile;
    invoke-virtual {v0, p1}, Lcom/mediatek/agps/MtkAgpsProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/mediatek/agps/MtkAgpsProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/agps/MtkAgpsProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/agps/MtkAgpsProfile;
    .locals 1
    .parameter "size"

    .prologue
    .line 74
    new-array v0, p1, [Lcom/mediatek/agps/MtkAgpsProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/mediatek/agps/MtkAgpsProfile$1;->newArray(I)[Lcom/mediatek/agps/MtkAgpsProfile;

    move-result-object v0

    return-object v0
.end method
