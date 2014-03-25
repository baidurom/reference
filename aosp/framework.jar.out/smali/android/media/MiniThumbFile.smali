.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MiniThumbFile$ThumbResult;
    }
.end annotation


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x4268

.field private static final HEADER_SIZE:I = 0x15

.field private static final LOG:Z = true

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final UNKNOWN_CHECK_CODE:J = -0x1L

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MAX_THUMB_COUNT:J

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/nio/channels/FileChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChecker:Ljava/util/zip/Adler32;

.field private final mMiniThumbFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    .line 397
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroid/media/MiniThumbFile;->MAX_THUMB_COUNT:J

    .line 146
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 147
    const/16 v0, 0x4268

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 148
    return-void
.end method

.method private getFileChannel(J)Ljava/nio/channels/FileChannel;
    .locals 3
    .parameter "id"

    .prologue
    .line 404
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFileIndex(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method private getFileIndex(J)J
    .locals 4
    .parameter "id"

    .prologue
    .line 399
    iget-wide v2, p0, Landroid/media/MiniThumbFile;->MAX_THUMB_COUNT:J

    div-long v0, p1, v2

    .line 400
    .local v0, fileindex:J
    return-wide v0
.end method

.method private getFilePos(J)J
    .locals 6
    .parameter "id"

    .prologue
    .line 408
    iget-wide v2, p0, Landroid/media/MiniThumbFile;->MAX_THUMB_COUNT:J

    rem-long v2, p1, v2

    const-wide/16 v4, 0x4268

    mul-long v0, v2, v4

    .line 409
    .local v0, pos:J
    return-wide v0
.end method

.method public static getThumbdataPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "uri"

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 356
    .local v3, type:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/media"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 357
    .local v2, thumbFileUri:Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/.thumbnails"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, directoryName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.thumbdata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, path:Ljava/lang/String;
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThumbdataPath("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-object v1
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .parameter "uri"

    .prologue
    .line 79
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, type:Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 82
    .local v0, file:Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0           #file:Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 85
    .restart local v0       #file:Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit v3

    return-object v0

    .line 79
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile(J)Ljava/io/RandomAccessFile;
    .locals 13
    .parameter "id"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFileIndex(J)J

    move-result-wide v5

    .line 112
    .local v5, fileindex:J
    iget-object v10, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/RandomAccessFile;

    .line 113
    .local v7, miniThumbFile:Ljava/io/RandomAccessFile;
    if-nez v7, :cond_1

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->removeOldFile(J)V

    .line 115
    const/4 v10, 0x5

    invoke-direct {p0, v10, p1, p2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(IJ)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, path:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 117
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_0

    .line 119
    const-string v10, "MiniThumbFile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to create .thumbnails directory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, f:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "rw"

    invoke-direct {v8, v4, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #miniThumbFile:Ljava/io/RandomAccessFile;
    .local v8, miniThumbFile:Ljava/io/RandomAccessFile;
    move-object v7, v8

    .line 136
    .end local v8           #miniThumbFile:Ljava/io/RandomAccessFile;
    .restart local v7       #miniThumbFile:Ljava/io/RandomAccessFile;
    :goto_0
    if-eqz v7, :cond_1

    .line 137
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 138
    .local v0, channel:Ljava/nio/channels/FileChannel;
    iget-object v10, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v10, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #directory:Ljava/io/File;
    .end local v4           #f:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/RandomAccessFile;

    return-object v10

    .line 126
    .restart local v1       #directory:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    .restart local v9       #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 129
    .local v2, ex:Ljava/io/IOException;
    const-string v10, "MiniThumbFile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "miniThumbDataFile: IOException! path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v8, v4, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7           #miniThumbFile:Ljava/io/RandomAccessFile;
    .restart local v8       #miniThumbFile:Ljava/io/RandomAccessFile;
    move-object v7, v8

    .line 134
    .end local v8           #miniThumbFile:Ljava/io/RandomAccessFile;
    .restart local v7       #miniThumbFile:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 132
    :catch_1
    move-exception v3

    .line 133
    .local v3, ex2:Ljava/io/IOException;
    const-string v10, "MiniThumbFile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "miniThumbDataFile: IOException(r)! path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .parameter "version"

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private randomAccessFilePath(IJ)Ljava/lang/String;
    .locals 5
    .parameter "version"
    .parameter "id"

    .prologue
    .line 413
    invoke-direct {p0, p2, p3}, Landroid/media/MiniThumbFile;->getFileIndex(J)J

    move-result-wide v1

    .line 414
    .local v1, fileindex:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DCIM/.thumbnails"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, directoryName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.thumbdata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private removeOldFile()V
    .locals 6

    .prologue
    .line 99
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, oldPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, oldFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeOldFile: SecurityException! path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeOldFile(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 421
    const-string v0, "MiniThumbFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOldFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/media/MiniThumbFile;->removeThumbdataFile(IJ)V

    .line 423
    return-void
.end method

.method private removeThumbdataFile(IJ)V
    .locals 6
    .parameter "version"
    .parameter "id"

    .prologue
    .line 426
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiniThumbFile;->randomAccessFilePath(IJ)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, oldPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, oldFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeThumbdataFile("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeThumbdataFile: SecurityException! path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    .line 72
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 73
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    .end local v0           #file:Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 75
    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 6

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    const-string v4, "MiniThumbFile"

    const-string v5, "deactivate() begin"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 153
    .local v2, key:Ljava/lang/Long;
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v3, miniThumbFile:Ljava/io/RandomAccessFile;
    if-eqz v3, :cond_0

    .line 156
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, ex:Ljava/io/IOException;
    :try_start_2
    const-string v4, "MiniThumbFile"

    const-string v5, "deactivate: IOException!"

    invoke-static {v4, v5, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Long;
    .end local v3           #miniThumbFile:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 163
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFiles:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 164
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 165
    const-string v4, "MiniThumbFile"

    const-string v5, "deactivate() end"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getMagic(J)J
    .locals 11
    .parameter "id"

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    .line 174
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Ljava/io/RandomAccessFile;

    move-result-object v8

    .line 175
    .local v8, r:Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_2

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFilePos(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 177
    .local v1, pos:J
    const/4 v7, 0x0

    .line 179
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 180
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/media/MiniThumbFile;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 183
    .local v0, channel:Ljava/nio/channels/FileChannel;
    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 186
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 187
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-ne v3, v9, :cond_1

    .line 189
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v3

    .line 200
    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v3

    .line 202
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v6

    .line 203
    .local v6, ex:Ljava/io/IOException;
    :try_start_3
    const-string v5, "MiniThumbFile"

    const-string v9, "getMagic: can not release lock!"

    invoke-static {v5, v9, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #pos:J
    .end local v6           #ex:Ljava/io/IOException;
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 200
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :cond_1
    if-eqz v7, :cond_2

    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 207
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_2
    :goto_1
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 202
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_1
    move-exception v6

    .line 203
    .restart local v6       #ex:Ljava/io/IOException;
    :try_start_5
    const-string v3, "MiniThumbFile"

    const-string v4, "getMagic: can not release lock!"

    invoke-static {v3, v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 192
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 193
    .restart local v6       #ex:Ljava/io/IOException;
    :try_start_6
    const-string v3, "MiniThumbFile"

    const-string v4, "Got exception checking file magic: "

    invoke-static {v3, v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 200
    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 202
    :catch_3
    move-exception v6

    .line 203
    :try_start_8
    const-string v3, "MiniThumbFile"

    const-string v4, "getMagic: can not release lock!"

    invoke-static {v3, v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 194
    .end local v6           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 196
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_9
    const-string v3, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got exception when reading magic, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", disk full or mount read-only? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 200
    if-eqz v7, :cond_2

    :try_start_a
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_1

    .line 202
    :catch_5
    move-exception v6

    .line 203
    .local v6, ex:Ljava/io/IOException;
    :try_start_b
    const-string v3, "MiniThumbFile"

    const-string v4, "getMagic: can not release lock!"

    invoke-static {v3, v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 199
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 200
    if-eqz v7, :cond_3

    :try_start_c
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 204
    :cond_3
    :goto_2
    :try_start_d
    throw v3

    .line 202
    :catch_6
    move-exception v6

    .line 203
    .restart local v6       #ex:Ljava/io/IOException;
    const-string v4, "MiniThumbFile"

    const-string v5, "getMagic: can not release lock!"

    invoke-static {v4, v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 1
    .parameter "id"
    .parameter "data"

    .prologue
    .line 273
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/media/MiniThumbFile$ThumbResult;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMiniThumbFromFile(J[BLandroid/media/MiniThumbFile$ThumbResult;)[B
    .locals 20
    .parameter "id"
    .parameter "data"
    .parameter "result"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 291
    .local v18, r:Ljava/io/RandomAccessFile;
    if-nez v18, :cond_1

    const/16 p3, 0x0

    .line 346
    .end local p3
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p3

    .line 293
    .restart local p3
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->getFilePos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 294
    .local v3, pos:J
    const/4 v13, 0x0

    .line 296
    .local v13, lock:Ljava/nio/channels/FileLock;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 297
    invoke-direct/range {p0 .. p2}, Landroid/media/MiniThumbFile;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 298
    .local v2, channel:Ljava/nio/channels/FileChannel;
    const-wide/16 v5, 0x4268

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v19

    .line 300
    .local v19, size:I
    const/16 v5, 0x15

    move/from16 v0, v19

    if-le v0, v5, :cond_6

    .line 301
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 303
    .local v11, flag:B
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 304
    .local v14, magic:J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 305
    .local v12, length:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 306
    .local v8, check:J
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMiniThumbFromFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", magic="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", check="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-wide/16 v16, -0x1

    .line 310
    .local v16, newCheck:J
    add-int/lit8 v5, v12, 0x15

    move/from16 v0, v19

    if-lt v0, v5, :cond_6

    move-object/from16 v0, p3

    array-length v5, v0

    if-lt v5, v12, :cond_6

    .line 311
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v6, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 312
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 313
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v5}, Ljava/util/zip/Adler32;->reset()V

    .line 314
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v7, v12}, Ljava/util/zip/Adler32;->update([BII)V

    .line 315
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v5}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v16

    .line 316
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    const-wide/16 v5, -0x1

    cmp-long v5, v16, v5

    if-eqz v5, :cond_4

    cmp-long v5, v16, v8

    if-nez v5, :cond_4

    .line 318
    if-eqz p4, :cond_2

    .line 319
    const/4 v5, 0x2

    :try_start_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/media/MiniThumbFile$ThumbResult;->setDetail(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 339
    :cond_2
    if-eqz v13, :cond_0

    :try_start_5
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 341
    :catch_0
    move-exception v10

    .line 342
    .local v10, ex:Ljava/io/IOException;
    :try_start_6
    const-string v5, "MiniThumbFile"

    const-string v6, "getMiniThumbFromFile: can not release lock!"

    invoke-static {v5, v6, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 290
    .end local v2           #channel:Ljava/nio/channels/FileChannel;
    .end local v3           #pos:J
    .end local v8           #check:J
    .end local v10           #ex:Ljava/io/IOException;
    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v13           #lock:Ljava/nio/channels/FileLock;
    .end local v14           #magic:J
    .end local v16           #newCheck:J
    .end local v18           #r:Ljava/io/RandomAccessFile;
    .end local v19           #size:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 316
    .restart local v2       #channel:Ljava/nio/channels/FileChannel;
    .restart local v3       #pos:J
    .restart local v8       #check:J
    .restart local v11       #flag:B
    .restart local v12       #length:I
    .restart local v13       #lock:Ljava/nio/channels/FileLock;
    .restart local v14       #magic:J
    .restart local v16       #newCheck:J
    .restart local v18       #r:Ljava/io/RandomAccessFile;
    .restart local v19       #size:I
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 331
    .end local v2           #channel:Ljava/nio/channels/FileChannel;
    .end local v8           #check:J
    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    .end local v16           #newCheck:J
    .end local v19           #size:I
    :catch_1
    move-exception v10

    .line 332
    .restart local v10       #ex:Ljava/io/IOException;
    :try_start_9
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception when reading thumbnail id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 339
    if-eqz v13, :cond_3

    :try_start_a
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 345
    .end local v10           #ex:Ljava/io/IOException;
    :cond_3
    :goto_1
    :try_start_b
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMiniThumbFromFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 346
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 323
    .restart local v2       #channel:Ljava/nio/channels/FileChannel;
    .restart local v8       #check:J
    .restart local v11       #flag:B
    .restart local v12       #length:I
    .restart local v14       #magic:J
    .restart local v16       #newCheck:J
    .restart local v19       #size:I
    :cond_4
    if-eqz p4, :cond_5

    .line 324
    const/4 v5, 0x1

    :try_start_c
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/media/MiniThumbFile$ThumbResult;->setDetail(I)V

    .line 326
    :cond_5
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMiniThumbFromFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") wrong check code! newCheck="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldCheck="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 339
    .end local v8           #check:J
    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    .end local v16           #newCheck:J
    :cond_6
    if-eqz v13, :cond_3

    :try_start_d
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_1

    .line 341
    :catch_2
    move-exception v10

    .line 342
    .restart local v10       #ex:Ljava/io/IOException;
    :try_start_e
    const-string v5, "MiniThumbFile"

    const-string v6, "getMiniThumbFromFile: can not release lock!"

    invoke-static {v5, v6, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 341
    .end local v2           #channel:Ljava/nio/channels/FileChannel;
    .end local v19           #size:I
    :catch_3
    move-exception v10

    .line 342
    const-string v5, "MiniThumbFile"

    const-string v6, "getMiniThumbFromFile: can not release lock!"

    invoke-static {v5, v6, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .line 333
    .end local v10           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 335
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_f
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception when reading thumbnail, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 339
    if-eqz v13, :cond_3

    :try_start_10
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_1

    .line 341
    :catch_5
    move-exception v10

    .line 342
    .local v10, ex:Ljava/io/IOException;
    :try_start_11
    const-string v5, "MiniThumbFile"

    const-string v6, "getMiniThumbFromFile: can not release lock!"

    invoke-static {v5, v6, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_1

    .line 338
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 339
    if-eqz v13, :cond_7

    :try_start_12
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 343
    :cond_7
    :goto_2
    :try_start_13
    throw v5

    .line 341
    :catch_6
    move-exception v10

    .line 342
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v6, "MiniThumbFile"

    const-string v7, "getMiniThumbFromFile: can not release lock!"

    invoke-static {v6, v7, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 13
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    move-wide v0, p2

    invoke-direct {p0, v0, v1}, Landroid/media/MiniThumbFile;->miniThumbDataFile(J)Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 213
    .local v12, r:Ljava/io/RandomAccessFile;
    if-nez v12, :cond_1

    .line 261
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_1
    :try_start_1
    move-wide v0, p2

    invoke-direct {p0, v0, v1}, Landroid/media/MiniThumbFile;->getFilePos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 216
    .local v3, pos:J
    const/4 v11, 0x0

    .line 218
    .local v11, lock:Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_3

    .line 219
    :try_start_2
    array-length v5, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v6, 0x4253

    if-le v5, v6, :cond_2

    .line 255
    if-eqz v11, :cond_0

    :try_start_3
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v10

    .line 258
    .local v10, ex:Ljava/io/IOException;
    :try_start_4
    const-string v5, "MiniThumbFile"

    const-string/jumbo v6, "saveMiniThumbToFile: can not release lock!"

    invoke-static {v5, v6, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 212
    .end local v3           #pos:J
    .end local v10           #ex:Ljava/io/IOException;
    .end local v11           #lock:Ljava/nio/channels/FileLock;
    .end local v12           #r:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 223
    .restart local v3       #pos:J
    .restart local v11       #lock:Ljava/nio/channels/FileLock;
    .restart local v12       #r:Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_5
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 224
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 226
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    const-wide/16 v8, -0x1

    .line 230
    .local v8, check:J
    iget-object v6, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 231
    :try_start_6
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v5}, Ljava/util/zip/Adler32;->reset()V

    .line 232
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v5, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 233
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mChecker:Ljava/util/zip/Adler32;

    invoke-virtual {v5}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v8

    .line 234
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 235
    :try_start_7
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 236
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveMiniThumbToFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") flag=1, magic="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", check="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 241
    move-wide v0, p2

    invoke-direct {p0, v0, v1}, Landroid/media/MiniThumbFile;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 242
    .local v2, channel:Ljava/nio/channels/FileChannel;
    const-wide/16 v5, 0x4268

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v11

    .line 243
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 255
    .end local v2           #channel:Ljava/nio/channels/FileChannel;
    .end local v8           #check:J
    :cond_3
    if-eqz v11, :cond_0

    :try_start_8
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 257
    :catch_1
    move-exception v10

    .line 258
    .restart local v10       #ex:Ljava/io/IOException;
    :try_start_9
    const-string v5, "MiniThumbFile"

    const-string/jumbo v6, "saveMiniThumbToFile: can not release lock!"

    invoke-static {v5, v6, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 234
    .end local v10           #ex:Ljava/io/IOException;
    .restart local v8       #check:J
    :catchall_1
    move-exception v5

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 245
    .end local v8           #check:J
    :catch_2
    move-exception v10

    .line 246
    .restart local v10       #ex:Ljava/io/IOException;
    :try_start_c
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    throw v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 254
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 255
    if-eqz v11, :cond_4

    :try_start_d
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 259
    :cond_4
    :goto_1
    :try_start_e
    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 249
    :catch_3
    move-exception v10

    .line 251
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_f
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 255
    if-eqz v11, :cond_0

    :try_start_10
    invoke-virtual {v11}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 257
    :catch_4
    move-exception v10

    .line 258
    .local v10, ex:Ljava/io/IOException;
    :try_start_11
    const-string v5, "MiniThumbFile"

    const-string/jumbo v6, "saveMiniThumbToFile: can not release lock!"

    invoke-static {v5, v6, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 257
    .end local v10           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 258
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v6, "MiniThumbFile"

    const-string/jumbo v7, "saveMiniThumbToFile: can not release lock!"

    invoke-static {v6, v7, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1
.end method
