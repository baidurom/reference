.class public Landroid/net/NetworkStatsHistory$ParcelUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readLongArray(Landroid/os/Parcel;)[J
    .locals 5
    .parameter "in"

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .local v1, size:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x0

    .line 740
    :cond_0
    return-object v2

    .line 736
    :cond_1
    new-array v2, v1, [J

    .line 737
    .local v2, values:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 738
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static writeLongArray(Landroid/os/Parcel;[JI)V
    .locals 3
    .parameter "out"
    .parameter "values"
    .parameter "size"

    .prologue
    .line 744
    if-nez p1, :cond_1

    .line 745
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    :cond_0
    return-void

    .line 748
    :cond_1
    array-length v1, p1

    if-le p2, v1, :cond_2

    .line 749
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size larger than length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    :cond_2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 753
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
