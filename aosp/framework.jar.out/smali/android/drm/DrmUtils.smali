.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$1;,
        Landroid/drm/DrmUtils$DrmProfile;,
        Landroid/drm/DrmUtils$DrmScanCompletedProxy;,
        Landroid/drm/DrmUtils$OnDrmScanCompletedListener;,
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation


# static fields
.field private static final CID_URIS:[Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "DrmUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Landroid/drm/DrmUtils;->CID_URIS:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method public static getAction(Ljava/lang/String;)I
    .locals 2
    .parameter "mime"

    .prologue
    const/4 v0, 0x1

    .line 211
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const/4 v0, 0x7

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    const-string v1, "audio/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "video/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmUtils$DrmProfile;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "client"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    const-string v0, "DrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmProfile() : uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-object v8

    .line 346
    :cond_1
    new-instance v8, Landroid/drm/DrmUtils$DrmProfile;

    invoke-direct {v8}, Landroid/drm/DrmUtils$DrmProfile;-><init>()V

    .line 347
    .local v8, profile:Landroid/drm/DrmUtils$DrmProfile;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, scheme:Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    const/4 v6, 0x0

    .line 352
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "is_drm"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "drm_method"

    aput-object v1, v2, v0

    .line 356
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 357
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const-string v0, "1"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    .line 360
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/drm/DrmUtils$DrmProfile;->method:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 369
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 362
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v8, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 365
    .end local v2           #projection:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 366
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    if-eqz v6, :cond_0

    .line 369
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 368
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 369
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 372
    .end local v6           #c:Landroid/database/Cursor;
    :cond_5
    const-string v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/drm/DrmUtils;->isDrmSufix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    iput-boolean v5, v8, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    .line 375
    invoke-virtual {p2, p1}, Landroid/drm/DrmManagerClient;->getMethod(Landroid/net/Uri;)I

    move-result v0

    iput v0, v8, Landroid/drm/DrmUtils$DrmProfile;->method:I

    goto/16 :goto_0

    .line 377
    :cond_6
    iput-boolean v4, v8, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    goto/16 :goto_0
.end method

.method public static getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .locals 2
    .parameter "extendedMetadata"

    .prologue
    .line 122
    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils$1;)V

    return-object v0
.end method

.method private static isDrmSufix(Ljava/lang/String;)Z
    .locals 3
    .parameter "filename"

    .prologue
    .line 399
    const-string v0, "DrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmSufix() : filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-nez p0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static quiteDispose(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static quiteDispose(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 106
    if-eqz p0, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static readBytes(Ljava/io/File;)[B
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v2, inputStream:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v0, bufferedStream:Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 62
    .local v1, data:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    .line 63
    .local v3, length:I
    if-lez v3, :cond_0

    .line 64
    new-array v1, v3, [B

    .line 66
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quiteDispose(Ljava/io/InputStream;)V

    .line 70
    invoke-static {v2}, Landroid/drm/DrmUtils;->quiteDispose(Ljava/io/InputStream;)V

    .line 72
    return-object v1

    .line 69
    .end local v3           #length:I
    :catchall_0
    move-exception v4

    invoke-static {v0}, Landroid/drm/DrmUtils;->quiteDispose(Ljava/io/InputStream;)V

    .line 70
    invoke-static {v2}, Landroid/drm/DrmUtils;->quiteDispose(Ljava/io/InputStream;)V

    throw v4
.end method

.method static readBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method static removeFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 92
    return-void
.end method

.method public static rescanDrmMediaFiles(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmUtils$OnDrmScanCompletedListener;)I
    .locals 17
    .parameter "context"
    .parameter "drmContentUri"
    .parameter "callback"

    .prologue
    .line 242
    const-string v3, "DrmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rescanDrmMediaFiles() : drmContentUri="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, " callback="

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 245
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v11, pathArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v15, values:Landroid/content/ContentValues;
    const-string v3, "date_modified"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string v4, "drm_content_uri=?"

    .line 249
    .local v4, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    .line 250
    .local v5, whereArgs:[Ljava/lang/String;
    sget-object v3, Landroid/drm/DrmUtils;->CID_URIS:[Landroid/net/Uri;

    array-length v10, v3

    .line 251
    .local v10, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 252
    sget-object v3, Landroid/drm/DrmUtils;->CID_URIS:[Landroid/net/Uri;

    aget-object v2, v3, v9

    .line 253
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v16, "_data"

    aput-object v16, v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 254
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 255
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 261
    .end local v2           #uri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 262
    .local v14, total:I
    const/4 v3, 0x1

    if-ge v14, v3, :cond_4

    .line 263
    if-eqz p2, :cond_3

    .line 264
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/drm/DrmUtils$OnDrmScanCompletedListener;->onScanCompletedAll(I)V

    .line 281
    :cond_3
    const-string v3, "DrmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rescanDrmMediaFiles() : total need scan: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v14

    .line 267
    :cond_4
    new-array v12, v14, [Ljava/lang/String;

    .line 268
    .local v12, paths:[Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 269
    if-eqz p2, :cond_5

    .line 270
    new-instance v7, Landroid/drm/DrmUtils$DrmScanCompletedProxy;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v14}, Landroid/drm/DrmUtils$DrmScanCompletedProxy;-><init>(Landroid/drm/DrmUtils$OnDrmScanCompletedListener;I)V

    .line 271
    .local v7, clientProxy:Landroid/drm/DrmUtils$DrmScanCompletedProxy;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 276
    .end local v7           #clientProxy:Landroid/drm/DrmUtils$DrmScanCompletedProxy;
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 277
    .local v13, size:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v13, :cond_3

    .line 278
    const-string v6, "DrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rescanDrmMediaFiles() : path "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 273
    .end local v13           #size:I
    :cond_5
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_2
.end method

.method static writeToFile(Ljava/lang/String;[B)V
    .locals 3
    .parameter "path"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, outputStream:Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 81
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    .local v1, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    invoke-static {v1}, Landroid/drm/DrmUtils;->quiteDispose(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 87
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    return-void

    .line 84
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quiteDispose(Ljava/io/OutputStream;)V

    throw v2

    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method
