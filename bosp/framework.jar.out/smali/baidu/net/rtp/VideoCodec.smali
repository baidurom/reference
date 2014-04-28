.class public Lbaidu/net/rtp/VideoCodec;
.super Ljava/lang/Object;
.source "VideoCodec.java"


# static fields
.field public static final H264:Lbaidu/net/rtp/VideoCodec;

.field private static final sCodecs:[Lbaidu/net/rtp/VideoCodec;


# instance fields
.field public final fmtp:Ljava/lang/String;

.field public final rtpmap:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lbaidu/net/rtp/VideoCodec;

    const/16 v1, 0x62

    const-string v2, "H264/90000"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbaidu/net/rtp/VideoCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbaidu/net/rtp/VideoCodec;->H264:Lbaidu/net/rtp/VideoCodec;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lbaidu/net/rtp/VideoCodec;

    const/4 v1, 0x0

    sget-object v2, Lbaidu/net/rtp/VideoCodec;->H264:Lbaidu/net/rtp/VideoCodec;

    aput-object v2, v0, v1

    sput-object v0, Lbaidu/net/rtp/VideoCodec;->sCodecs:[Lbaidu/net/rtp/VideoCodec;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "rtpmap"
    .parameter "fmtp"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lbaidu/net/rtp/VideoCodec;->type:I

    .line 55
    iput-object p2, p0, Lbaidu/net/rtp/VideoCodec;->rtpmap:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lbaidu/net/rtp/VideoCodec;->fmtp:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static getCodec(ILjava/lang/String;Ljava/lang/String;)Lbaidu/net/rtp/VideoCodec;
    .locals 8
    .parameter "type"
    .parameter "rtpmap"
    .parameter "fmtp"

    .prologue
    const/4 v6, 0x0

    .line 80
    const/16 v7, 0x61

    if-lt p0, v7, :cond_0

    const/16 v7, 0x7f

    if-le p0, v7, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v6

    .line 84
    :cond_1
    const/4 v3, 0x0

    .line 85
    .local v3, hint:Lbaidu/net/rtp/VideoCodec;
    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, clue:Ljava/lang/String;
    sget-object v0, Lbaidu/net/rtp/VideoCodec;->sCodecs:[Lbaidu/net/rtp/VideoCodec;

    .local v0, arr$:[Lbaidu/net/rtp/VideoCodec;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 88
    .local v2, codec:Lbaidu/net/rtp/VideoCodec;
    iget-object v7, v2, Lbaidu/net/rtp/VideoCodec;->rtpmap:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 89
    move-object v3, v2

    .line 103
    .end local v0           #arr$:[Lbaidu/net/rtp/VideoCodec;
    .end local v1           #clue:Ljava/lang/String;
    .end local v2           #codec:Lbaidu/net/rtp/VideoCodec;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    .line 107
    new-instance v6, Lbaidu/net/rtp/VideoCodec;

    invoke-direct {v6, p0, p1, p2}, Lbaidu/net/rtp/VideoCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .restart local v0       #arr$:[Lbaidu/net/rtp/VideoCodec;
    .restart local v1       #clue:Ljava/lang/String;
    .restart local v2       #codec:Lbaidu/net/rtp/VideoCodec;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 93
    .end local v0           #arr$:[Lbaidu/net/rtp/VideoCodec;
    .end local v1           #clue:Ljava/lang/String;
    .end local v2           #codec:Lbaidu/net/rtp/VideoCodec;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_4
    const/16 v7, 0x60

    if-le p0, v7, :cond_2

    .line 94
    sget-object v0, Lbaidu/net/rtp/VideoCodec;->sCodecs:[Lbaidu/net/rtp/VideoCodec;

    .restart local v0       #arr$:[Lbaidu/net/rtp/VideoCodec;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 95
    .restart local v2       #codec:Lbaidu/net/rtp/VideoCodec;
    iget v7, v2, Lbaidu/net/rtp/VideoCodec;->type:I

    if-ne p0, v7, :cond_5

    .line 96
    move-object v3, v2

    .line 97
    iget-object p1, v2, Lbaidu/net/rtp/VideoCodec;->rtpmap:Ljava/lang/String;

    .line 98
    goto :goto_2

    .line 94
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static getCodecs()[Lbaidu/net/rtp/VideoCodec;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lbaidu/net/rtp/VideoCodec;->sCodecs:[Lbaidu/net/rtp/VideoCodec;

    sget-object v1, Lbaidu/net/rtp/VideoCodec;->sCodecs:[Lbaidu/net/rtp/VideoCodec;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbaidu/net/rtp/VideoCodec;

    return-object v0
.end method
