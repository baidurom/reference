.class public Lcom/android/phone/PhoneRecorder;
.super Lcom/android/phone/Recorder;
.source "PhoneRecorder.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field private static final AUDIO_ANY:Ljava/lang/String; = "audio/*"

.field private static AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String; = null

.field private static final AUDIO_DB_TITLE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field static final MISSED_CALL_NOTIFICATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PhoneRecorder"

.field private static lock:[B

.field private static mFlagRecord:Z

.field private static mPhoneMemeoryFullFlag:Z

.field private static mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

.field private static mSDcardFullFlag:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field mMaxFileSize:J

.field mRequestedType:Ljava/lang/String;

.field mSampleInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 44
    new-array v0, v1, [B

    sput-object v0, Lcom/android/phone/PhoneRecorder;->lock:[B

    .line 46
    sput-boolean v1, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    .line 48
    sput-boolean v1, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    .line 50
    sput-boolean v1, Lcom/android/phone/PhoneRecorder;->mPhoneMemeoryFullFlag:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/phone/Recorder;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneRecorder;->mSampleInterrupted:Z

    .line 53
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/PhoneRecorder;->mMaxFileSize:J

    .line 56
    iput-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 93
    iput-object v2, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0343

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/phone/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    .line 66
    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 15
    .parameter "file"

    .prologue
    .line 273
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v4, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 275
    .local v2, current:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 276
    .local v7, modDate:J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 277
    .local v5, date:Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 278
    .local v6, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 282
    .local v11, title:Ljava/lang/String;
    const-string v12, "is_music"

    const-string v13, "0"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v12, "title"

    invoke-virtual {v4, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v12, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v12, "date_added"

    const-wide/16 v13, 0x3e8

    div-long v13, v2, v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v12, "date_modified"

    const-wide/16 v13, 0x3e8

    div-long v13, v7, v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v12, "mime_type"

    iget-object v13, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v12, "artist"

    iget-object v13, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v14, 0x7f0b033f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v12, "album"

    iget-object v13, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v14, 0x7f0b0340

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v12, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 294
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 296
    .local v1, base:Landroid/net/Uri;
    invoke-virtual {v9, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 298
    .local v10, result:Landroid/net/Uri;
    if-nez v10, :cond_0

    .line 299
    const-string v12, "PhoneRecorder"

    const-string v13, "----- Unable to save recorded audio !!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v10, 0x0

    .line 312
    .end local v10           #result:Landroid/net/Uri;
    :goto_0
    return-object v10

    .line 303
    .restart local v10       #result:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneRecorder;->getPlaylistId()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 304
    invoke-direct {p0, v9}, Lcom/android/phone/PhoneRecorder;->createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 306
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 307
    .local v0, audioId:I
    invoke-direct {p0}, Lcom/android/phone/PhoneRecorder;->getPlaylistId()I

    move-result v12

    int-to-long v12, v12

    invoke-direct {p0, v9, v0, v12, v13}, Lcom/android/phone/PhoneRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 311
    iget-object v12, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v13, v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .parameter "resolver"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 360
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 361
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 362
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 363
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 366
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 367
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 373
    .end local v6           #base:I
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"

    .prologue
    .line 344
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0343

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    .line 346
    const-string v2, "name"

    sget-object v3, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 349
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 350
    const-string v2, "PhoneRecorder"

    const-string v3, "---- Unable to save recorded audio -----"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    return-object v1
.end method

.method private static diskSpaceAvailable(Z)Z
    .locals 14
    .parameter "checkSdcard"

    .prologue
    const/4 v9, 0x0

    .line 474
    if-eqz p0, :cond_1

    .line 475
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getSdCardFile()Ljava/io/File;

    move-result-object v8

    .line 480
    .local v8, sdCardDirectory:Ljava/io/File;
    :goto_0
    if-nez v8, :cond_2

    .line 481
    const-string v10, "PhoneRecorder"

    const-string v11, "-----diskSpaceAvailable: sdCardDirectory is null (1)"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    :goto_1
    return v9

    .line 477
    .end local v8           #sdCardDirectory:Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getPhoneMemoryFile()Ljava/io/File;

    move-result-object v8

    .restart local v8       #sdCardDirectory:Ljava/io/File;
    goto :goto_0

    .line 487
    :cond_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 488
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .local v5, fs:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-long v2, v10

    .line 498
    .local v2, blocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v0, v10

    .line 499
    .local v0, blockSize:J
    mul-long v10, v2, v0

    const-wide/32 v12, 0x20000

    sub-long v6, v10, v12

    .line 500
    .local v6, result:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    .line 490
    .end local v0           #blockSize:J
    .end local v2           #blocks:J
    .end local v5           #fs:Landroid/os/StatFs;
    .end local v6           #result:J
    :cond_3
    :try_start_1
    const-string v10, "PhoneRecorder"

    const-string v11, "-----diskSpaceAvailable: sdCardDirectory is null (2)----"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 493
    :catch_0
    move-exception v4

    .line 494
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v10, "PhoneRecorder"

    const-string v11, "-----diskSpaceAvailable: IllegalArgumentException----"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    sget-object v1, Lcom/android/phone/PhoneRecorder;->lock:[B

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/phone/PhoneRecorder;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 77
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPhoneMemoryFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private getPlaylistId()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 319
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 320
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 321
    .local v2, ids:[Ljava/lang/String;
    const-string v8, "name=?"

    .line 322
    .local v8, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0343

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    .line 323
    new-array v4, v5, [Ljava/lang/String;

    sget-object v0, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 324
    .local v4, args:[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 325
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 326
    const-string v0, "PhoneRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    const/4 v7, -0x1

    .line 329
    .local v7, id:I
    if-eqz v6, :cond_2

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 334
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_2
    return v7
.end method

.method public static getSdCardFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 432
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecondaryStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 463
    .local v1, result:Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/android/phone/SecondaryStorageReflect;->getSecondaryExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 468
    :goto_0
    return-object v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PhoneRecorder"

    const-string v3, "No ExtSdCard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method

.method public static isPhoneMemoryAvailable()Z
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isExternalStorageAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isSecondaryStorageAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    return v0
.end method

.method public static isSdCardAvailable()Z
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isExternalStorageAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isSecondaryStorageAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSecondaryStorageAvailable()Z
    .locals 4

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 452
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Lcom/android/phone/SecondaryStorageReflect;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 457
    :goto_0
    return v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PhoneRecorder"

    const-string v3, "No ExtSdCard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static phoneMemeoryFullFlag()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-static {v0}, Lcom/android/phone/PhoneRecorder;->diskSpaceAvailable(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/phone/PhoneRecorder;->mPhoneMemeoryFullFlag:Z

    .line 506
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mPhoneMemeoryFullFlag:Z

    return v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 386
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 384
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 385
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 386
    goto :goto_0
.end method

.method public static sdcardFullFlag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 243
    invoke-static {v0}, Lcom/android/phone/PhoneRecorder;->diskSpaceAvailable(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    .line 244
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    return v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showRecordNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "content"

    .prologue
    const v8, 0x7f0b02f5

    .line 180
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0201f6

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 184
    .local v3, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.baidu.soundrecorder"

    const-string v5, "com.baidu.soundrecorder.RecordingFileList"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {p1, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 187
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 190
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 194
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 195
    .local v2, nm:Landroid/app/NotificationManager;
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 196
    return-void
.end method


# virtual methods
.method public ismFlagRecord()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 413
    const-string v0, "PhoneRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 391
    const-string v0, "PhoneRecorder"

    const-string v1, "MediaRecorder error..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 402
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 410
    :cond_0
    return-void
.end method

.method public saveSample()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->sampleLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v2

    .line 255
    :cond_1
    const/4 v1, 0x0

    .line 257
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    .line 266
    const/4 v2, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public setCallerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "phoneNumber"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/phone/PhoneRecorder;->callerName:Ljava/lang/String;

    .line 515
    iput-object p2, p0, Lcom/android/phone/PhoneRecorder;->callerPhoneNumber:Ljava/lang/String;

    .line 516
    const-string v0, "PhoneRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallerName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->callerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->callerPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method public setExternalStorage(Z)V
    .locals 0
    .parameter "storeToSdcard"

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/android/phone/PhoneRecorder;->isStoreToSdcard:Z

    .line 511
    return-void
.end method

.method public setMContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public setmFlagRecord(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 86
    sput-boolean p1, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    .line 87
    return-void
.end method

.method public startRecord()V
    .locals 6

    .prologue
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecord, mRequestedType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 96
    sget-boolean v2, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    if-eqz v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 106
    .local v0, filePath:Ljava/lang/String;
    :try_start_0
    const-string v2, "audio/amr"

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const/4 v2, 0x3

    const-string v3, ".amr"

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneRecorder;->startRecording(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_1
    if-eqz v0, :cond_1

    .line 120
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    new-instance v3, Lcom/android/phone/Recorder$CallerRecordInfo;

    iget-object v4, p0, Lcom/android/phone/PhoneRecorder;->callerPhoneNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/PhoneRecorder;->callerName:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/phone/Recorder$CallerRecordInfo;-><init>(Lcom/android/phone/Recorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->addCallRecord(Lcom/android/phone/Recorder$CallerRecordInfo;)V

    .line 124
    :cond_1
    sget-object v2, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneRecorder;->setmFlagRecord(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, oe:Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneRecorder;->setmFlagRecord(Z)V

    goto :goto_0

    .line 108
    .end local v1           #oe:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v2, "audio/3gpp"

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    const/4 v2, 0x1

    const-string v3, ".3gpp"

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneRecorder;->startRecording(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_3
    const-string v2, "audio/*"

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    const/4 v2, 0x1

    const-string v3, ".3gpp"

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneRecorder;->startRecording(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid output file type requested"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    goto :goto_0
.end method

.method public stopRecord(Z)V
    .locals 5
    .parameter "mount"

    .prologue
    const/4 v4, 0x1

    .line 140
    sget-boolean v1, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v1, "stopRecord"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->stop()V

    .line 146
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 147
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-boolean v1, p0, Lcom/android/phone/PhoneRecorder;->isStoreToSdcard:Z

    if-eqz v1, :cond_3

    .line 149
    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->saveSample()Z

    .line 151
    sget-boolean v1, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b034c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 174
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneRecorder;->showRecordNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->delete()V

    .line 159
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b034a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->saveSample()Z

    .line 166
    sget-boolean v1, Lcom/android/phone/PhoneRecorder;->mPhoneMemeoryFullFlag:Z

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0351

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneRecorder;->showRecordNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
