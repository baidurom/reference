.class public Lcom/mediatek/mpo/MpoDecoder;
.super Ljava/lang/Object;
.source "MpoDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoDecoder"


# instance fields
.field private final mNativeMpoDecoder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "mpojni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "nativeMpoDecoder"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native mpo decoder creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput p1, p0, Lcom/mediatek/mpo/MpoDecoder;->mNativeMpoDecoder:I

    .line 80
    return-void
.end method

.method private static native decodeByteArray([BII)Lcom/mediatek/mpo/MpoDecoder;
.end method

.method public static native decodeFile(Ljava/lang/String;)Lcom/mediatek/mpo/MpoDecoder;
.end method

.method public static decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/mpo/MpoDecoder;
    .locals 5
    .parameter "cr"
    .parameter "mpoUri"

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v2, "MpoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeUri(mpoUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-object v1

    .line 102
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/mpo/MpoDecoder;->getByteBuffer(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v0

    .line 103
    .local v0, buffer:[B
    const-string v2, "MpoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez v0, :cond_1

    .line 105
    const-string v2, "MpoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got null buffer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/mediatek/mpo/MpoDecoder;->decodeByteArray([BII)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v1

    goto :goto_0
.end method

.method private static getByteBuffer(Landroid/content/ContentResolver;Landroid/net/Uri;)[B
    .locals 10
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 112
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Image Uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v3, 0x0

    .line 115
    .local v3, mpoStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 117
    const-string v7, "MpoDecoder"

    const-string/jumbo v8, "we want to get stream size.."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/high16 v0, 0x1

    .line 119
    .local v0, BufSize:I
    const/high16 v7, 0x1

    new-array v1, v7, [B

    .line 120
    .local v1, buffer:[B
    const/4 v5, 0x0

    .line 121
    .local v5, streamSize:I
    const/4 v4, 0x0

    .line 123
    .local v4, readSize:I
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 124
    if-lez v4, :cond_1

    .line 125
    add-int/2addr v5, v4

    .line 127
    :cond_1
    if-gtz v4, :cond_0

    .line 128
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "streamSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-gtz v5, :cond_3

    .line 130
    const-string v7, "MpoDecoder"

    const-string v8, "got invalid stream length of MPO"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 156
    .end local v0           #BufSize:I
    .end local v1           #buffer:[B
    .end local v4           #readSize:I
    .end local v5           #streamSize:I
    :cond_2
    :goto_0
    return-object v1

    .line 134
    .restart local v0       #BufSize:I
    .restart local v1       #buffer:[B
    .restart local v4       #readSize:I
    .restart local v5       #streamSize:I
    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 135
    const-string v7, "MpoDecoder"

    const-string/jumbo v8, "reopen stream"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 138
    const-string v7, "MpoDecoder"

    const-string v8, "allocate bysste"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    add-int/lit8 v7, v5, 0x1

    new-array v1, v7, [B

    .line 141
    const-string v7, "MpoDecoder"

    const-string/jumbo v8, "read stream.."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 145
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 146
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read whole stream length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eq v4, v5, :cond_4

    .line 148
    const-string v7, "MpoDecoder"

    const-string/jumbo v8, "read length could be wrong?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_4
    if-gez v4, :cond_2

    .line 151
    const-string v7, "MpoDecoder"

    const-string/jumbo v8, "read whole stream failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0           #BufSize:I
    .end local v1           #buffer:[B
    .end local v4           #readSize:I
    .end local v5           #streamSize:I
    :catch_0
    move-exception v2

    .line 155
    .local v2, ex:Ljava/io/IOException;
    const-string v7, "MpoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to open mpo stream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 156
    goto :goto_0
.end method


# virtual methods
.method public native close()V
.end method

.method public native frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public native frameCount()I
.end method

.method public native getMtkMpoType()I
.end method

.method public native height()I
.end method

.method public native suggestMtkMpoType()I
.end method

.method public native width()I
.end method
