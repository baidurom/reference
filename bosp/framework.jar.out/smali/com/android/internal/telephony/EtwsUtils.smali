.class public Lcom/android/internal/telephony/EtwsUtils;
.super Ljava/lang/Object;
.source "EtwsUtils.java"


# static fields
.field public static final ETWS_PDU_LENGTH:I = 0x38


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToInt([B)I
    .locals 5
    .parameter "values"

    .prologue
    .line 17
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    array-length v3, p0

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 18
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "valid byte array"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    .local v2, ret:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 23
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 24
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 25
    shl-int/lit8 v2, v2, 0x8

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_2
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 29
    return v2
.end method

.method public static intToBytes(I)[B
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x4

    .line 7
    new-array v1, v4, [B

    .line 8
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 9
    rsub-int/lit8 v2, v0, 0x3

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 10
    shr-int/lit8 p0, p0, 0x8

    .line 8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    return-object v1
.end method
