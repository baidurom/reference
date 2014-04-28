.class public final Lcom/baidu/internal/keyguard/hotword/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 1
    .parameter "in"

    .prologue
    .line 19
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/baidu/internal/keyguard/hotword/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 13
    .parameter "in"
    .parameter "len"

    .prologue
    .line 30
    div-int/lit8 v11, p1, 0x4

    mul-int/lit8 v4, v11, 0x3

    .line 32
    .local v4, length:I
    if-nez v4, :cond_0

    .line 33
    const/4 v11, 0x0

    new-array v10, v11, [B

    .line 112
    :goto_0
    return-object v10

    .line 36
    :cond_0
    new-array v5, v4, [B

    .line 38
    .local v5, out:[B
    const/4 v8, 0x0

    .line 43
    .local v8, pad:I
    :goto_1
    add-int/lit8 v11, p1, -0x1

    aget-byte v1, p0, v11

    .line 45
    .local v1, chr:B
    const/16 v11, 0xa

    if-eq v1, v11, :cond_1

    const/16 v11, 0xd

    if-eq v1, v11, :cond_1

    const/16 v11, 0x20

    if-eq v1, v11, :cond_1

    const/16 v11, 0x9

    if-ne v1, v11, :cond_2

    .line 42
    :cond_1
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 48
    :cond_2
    const/16 v11, 0x3d

    if-ne v1, v11, :cond_3

    .line 49
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 55
    :cond_3
    const/4 v6, 0x0

    .line 57
    .local v6, outIndex:I
    const/4 v3, 0x0

    .line 59
    .local v3, inIndex:I
    const/4 v0, 0x0

    .line 61
    .local v0, bits:I
    const/4 v9, 0x0

    .line 62
    .local v9, quantum:I
    const/4 v2, 0x0

    .local v2, i:I
    move v7, v6

    .end local v6           #outIndex:I
    .local v7, outIndex:I
    :goto_3
    if-ge v2, p1, :cond_a

    .line 63
    aget-byte v1, p0, v2

    .line 65
    const/16 v11, 0xa

    if-eq v1, v11, :cond_e

    const/16 v11, 0xd

    if-eq v1, v11, :cond_e

    const/16 v11, 0x20

    if-eq v1, v11, :cond_e

    const/16 v11, 0x9

    if-ne v1, v11, :cond_4

    move v6, v7

    .line 62
    .end local v7           #outIndex:I
    .restart local v6       #outIndex:I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #outIndex:I
    .restart local v7       #outIndex:I
    goto :goto_3

    .line 68
    :cond_4
    const/16 v11, 0x41

    if-lt v1, v11, :cond_5

    const/16 v11, 0x5a

    if-gt v1, v11, :cond_5

    .line 72
    add-int/lit8 v0, v1, -0x41

    .line 91
    :goto_5
    shl-int/lit8 v11, v9, 0x6

    int-to-byte v12, v0

    or-int v9, v11, v12

    .line 92
    rem-int/lit8 v11, v3, 0x4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d

    .line 94
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outIndex:I
    .restart local v6       #outIndex:I
    const/high16 v11, 0xff

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 95
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outIndex:I
    .restart local v7       #outIndex:I
    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    .line 96
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outIndex:I
    .restart local v6       #outIndex:I
    and-int/lit16 v11, v9, 0xff

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 98
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 73
    .end local v6           #outIndex:I
    .restart local v7       #outIndex:I
    :cond_5
    const/16 v11, 0x61

    if-lt v1, v11, :cond_6

    const/16 v11, 0x7a

    if-gt v1, v11, :cond_6

    .line 77
    add-int/lit8 v0, v1, -0x47

    goto :goto_5

    .line 78
    :cond_6
    const/16 v11, 0x30

    if-lt v1, v11, :cond_7

    const/16 v11, 0x39

    if-gt v1, v11, :cond_7

    .line 82
    add-int/lit8 v0, v1, 0x4

    goto :goto_5

    .line 83
    :cond_7
    const/16 v11, 0x2b

    if-ne v1, v11, :cond_8

    .line 84
    const/16 v0, 0x3e

    goto :goto_5

    .line 85
    :cond_8
    const/16 v11, 0x2f

    if-ne v1, v11, :cond_9

    .line 86
    const/16 v0, 0x3f

    goto :goto_5

    .line 88
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 100
    :cond_a
    if-lez v8, :cond_b

    .line 102
    mul-int/lit8 v11, v8, 0x6

    shl-int/2addr v9, v11

    .line 104
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outIndex:I
    .restart local v6       #outIndex:I
    const/high16 v11, 0xff

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    .line 105
    const/4 v11, 0x1

    if-ne v8, v11, :cond_c

    .line 106
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outIndex:I
    .restart local v7       #outIndex:I
    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    :cond_b
    move v6, v7

    .line 110
    .end local v7           #outIndex:I
    .restart local v6       #outIndex:I
    :cond_c
    new-array v10, v6, [B

    .line 111
    .local v10, result:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v11, v10, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v6           #outIndex:I
    .end local v10           #result:[B
    .restart local v7       #outIndex:I
    :cond_d
    move v6, v7

    .end local v7           #outIndex:I
    .restart local v6       #outIndex:I
    goto :goto_6

    .end local v6           #outIndex:I
    .restart local v7       #outIndex:I
    :cond_e
    move v6, v7

    .end local v7           #outIndex:I
    .restart local v6       #outIndex:I
    goto/16 :goto_4
.end method

.method public static encode([BLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "in"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3d

    .line 133
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v5, v7, 0x3

    .line 134
    .local v5, length:I
    div-int/lit8 v7, v5, 0x4c

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    .line 135
    new-array v6, v5, [B

    .line 136
    .local v6, out:[B
    const/4 v3, 0x0

    .local v3, index:I
    const/4 v0, 0x0

    .local v0, crlr:I
    array-length v7, p0

    array-length v8, p0

    rem-int/lit8 v8, v8, 0x3

    sub-int v1, v7, v8

    .line 137
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #index:I
    .local v4, index:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 138
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 139
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    aget-byte v8, p0, v2

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 141
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 143
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 144
    sub-int v7, v4, v0

    rem-int/lit8 v7, v7, 0x4c

    if-nez v7, :cond_1

    if-eqz v4, :cond_1

    .line 145
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v7, 0xa

    aput-byte v7, v6, v4

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 137
    :goto_1
    add-int/lit8 v2, v2, 0x3

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 152
    :cond_0
    array-length v7, p0

    rem-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    :goto_2
    move v3, v4

    .line 167
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_3
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v7

    .line 154
    .end local v3           #index:I
    .restart local v4       #index:I
    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 155
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 156
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aput-byte v10, v6, v4

    .line 157
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-byte v10, v6, v3

    move v3, v4

    .line 158
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_3

    .line 160
    .end local v3           #index:I
    .restart local v4       #index:I
    :pswitch_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 161
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    aget-byte v8, p0, v1

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    .line 163
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/Base64;->MAP:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v6, v4

    .line 164
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-byte v10, v6, v3

    goto :goto_2

    :cond_1
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
