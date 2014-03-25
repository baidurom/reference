.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 662
    .local v1, size:I
    if-gez v1, :cond_0

    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "negative array size"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 663
    :cond_0
    new-array v2, v1, [J

    .line 664
    .local v2, values:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 665
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    return-object v2
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    const/4 v3, 0x0

    .line 675
    .local v3, shift:I
    const-wide/16 v1, 0x0

    .line 676
    .local v1, result:J
    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 677
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 678
    .local v0, b:B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    .line 679
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 680
    return-wide v1

    .line 681
    :cond_0
    add-int/lit8 v3, v3, 0x7

    .line 682
    goto :goto_0

    .line 683
    .end local v0           #b:B
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    const-string/jumbo v5, "malformed long"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 703
    .local v1, size:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x0

    .line 709
    :cond_0
    return-object v2

    .line 704
    :cond_1
    if-gez v1, :cond_2

    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "negative array size"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 705
    :cond_2
    new-array v2, v1, [J

    .line 706
    .local v2, values:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 707
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .locals 4
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 692
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 693
    return-void

    .line 695
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 696
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .locals 3
    .parameter "out"
    .parameter "values"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    if-nez p1, :cond_1

    .line 715
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 725
    :cond_0
    return-void

    .line 718
    :cond_1
    array-length v1, p1

    if-le p2, v1, :cond_2

    .line 719
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size larger than length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :cond_2
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 722
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 723
    aget-wide v1, p1, v0

    invoke-static {p0, v1, v2}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
