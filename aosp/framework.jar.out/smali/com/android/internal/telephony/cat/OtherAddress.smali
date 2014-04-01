.class Lcom/android/internal/telephony/cat/OtherAddress;
.super Ljava/lang/Object;
.source "BipUtils.java"


# instance fields
.field public address:Ljava/net/InetAddress;

.field public addressType:I

.field public rawAddress:[B


# direct methods
.method constructor <init>(I[BI)V
    .locals 5
    .parameter "type"
    .parameter "rawData"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I

    .line 122
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 123
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 127
    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I

    .line 128
    const/16 v1, 0x21

    iget v2, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I

    if-ne v1, v2, :cond_1

    .line 129
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    array-length v3, v3

    invoke-static {p2, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/16 v1, 0x57

    iget v2, p0, Lcom/android/internal/telephony/cat/OtherAddress;->addressType:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    const-string v2, "OtherAddress: out of bounds"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->rawAddress:[B

    .line 140
    iput-object v4, p0, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    goto :goto_0
.end method
