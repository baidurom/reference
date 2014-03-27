.class public Lcom/android/phone/PhoneRecorder;
.super Lcom/android/phone/Recorder;
.source "PhoneRecorder.java"


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field private static final AUDIO_ANY:Ljava/lang/String; = "audio/*"

.field private static AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String; = null

.field private static final AUDIO_DB_TITLE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field private static final TAG:Ljava/lang/String; = "PhoneRecorder"

.field private static lock:[B

.field private static mFlagRecord:Z

.field private static mPhoneMemeoryFullFlag:Z

.field private static mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

.field private static mSDcardFullFlag:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field mMaxFileSize:J

.field mRequestedType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 33
    new-array v0, v1, [B

    sput-object v0, Lcom/android/phone/PhoneRecorder;->lock:[B

    .line 34
    sput-boolean v1, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    .line 35
    sput-boolean v1, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    .line 36
    sput-boolean v1, Lcom/android/phone/PhoneRecorder;->mPhoneMemeoryFullFlag:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/phone/Recorder;-><init>()V

    .line 38
    const-string v0, "audio/amr"

    iput-object v0, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/PhoneRecorder;->mMaxFileSize:J

    .line 41
    iput-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 70
    iput-object v2, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v1, 0x7f0c029f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 15
    .parameter "file"

    .prologue
    .line 221
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v4, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 223
    .local v2, current:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 224
    .local v7, modDate:J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 225
    .local v5, date:Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    .local v6, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, title:Ljava/lang/String;
    const-string v12, "is_music"

    const-string v13, "0"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v12, "title"

    invoke-virtual {v4, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v12, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v12, "date_added"

    const-wide/16 v13, 0x3e8

    div-long v13, v2, v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v12, "date_modified"

    const-wide/16 v13, 0x3e8

    div-long v13, v7, v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v12, "mime_type"

    iget-object v13, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v12, "artist"

    iget-object v13, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v14, 0x7f0c02a9

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v12, "album"

    iget-object v13, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v14, 0x7f0c02aa

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v12, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 242
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 244
    .local v1, base:Landroid/net/Uri;
    invoke-virtual {v9, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 246
    .local v10, result:Landroid/net/Uri;
    if-nez v10, :cond_0

    .line 247
    const-string v12, "PhoneRecorder"

    const-string v13, "----- Unable to save recorded audio !!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v10, 0x0

    .line 260
    .end local v10           #result:Landroid/net/Uri;
    :goto_0
    return-object v10

    .line 251
    .restart local v10       #result:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneRecorder;->getPlaylistId()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 252
    invoke-direct {p0, v9}, Lcom/android/phone/PhoneRecorder;->createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 254
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    .local v0, audioId:I
    invoke-direct {p0}, Lcom/android/phone/PhoneRecorder;->getPlaylistId()I

    move-result v12

    int-to-long v12, v12

    invoke-direct {p0, v9, v0, v12, v13}, Lcom/android/phone/PhoneRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 259
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

    .line 312
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 315
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 316
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 317
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 318
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 320
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 321
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 327
    .end local v6           #base:I
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"

    .prologue
    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f0c029f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    .line 298
    const-string v2, "name"

    sget-object v3, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 302
    const-string v2, "PhoneRecorder"

    const-string v3, "---- Unable to save recorded audio -----"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    return-object v1
.end method

.method private static diskSpaceAvailable(Z)Z
    .locals 14
    .parameter "checkSdcard"

    .prologue
    const/4 v9, 0x0

    .line 160
    if-eqz p0, :cond_1

    .line 161
    invoke-static {}, Lcom/android/phone/FileUtils;->getSdCardFile()Ljava/io/File;

    move-result-object v8

    .line 166
    .local v8, sdCardDirectory:Ljava/io/File;
    :goto_0
    if-nez v8, :cond_2

    .line 167
    const-string v10, "PhoneRecorder"

    const-string v11, "-----diskSpaceAvailable: sdCardDirectory is null (1)"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_1
    return v9

    .line 163
    .end local v8           #sdCardDirectory:Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/android/phone/FileUtils;->getPhoneMemoryFile()Ljava/io/File;

    move-result-object v8

    .restart local v8       #sdCardDirectory:Ljava/io/File;
    goto :goto_0

    .line 173
    :cond_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 174
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .local v5, fs:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-long v2, v10

    .line 184
    .local v2, blocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v0, v10

    .line 185
    .local v0, blockSize:J
    mul-long v10, v2, v0

    const-wide/32 v12, 0x20000

    sub-long v6, v10, v12

    .line 186
    .local v6, result:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    .line 176
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

    .line 179
    :catch_0
    move-exception v4

    .line 180
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v10, "PhoneRecorder"

    const-string v11, "-----diskSpaceAvailable: IllegalArgumentException----"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    sget-object v1, Lcom/android/phone/PhoneRecorder;->lock:[B

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/phone/PhoneRecorder;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneRecorder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneRecorder;->mPhoneRecorder:Lcom/android/phone/PhoneRecorder;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPlaylistId()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 267
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 268
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 271
    .local v2, ids:[Ljava/lang/String;
    const-string v8, "name=?"

    .line 272
    .local v8, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f0c029f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    .line 273
    new-array v4, v5, [Ljava/lang/String;

    sget-object v0, Lcom/android/phone/PhoneRecorder;->AUDIO_DB_PLAYLIST_NAME:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 276
    .local v4, args:[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PhoneRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 277
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 278
    const-string v0, "PhoneRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const/4 v7, -0x1

    .line 281
    .local v7, id:I
    if-eqz v6, :cond_2

    .line 282
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 286
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    return v7
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    return v0
.end method

.method public static phoneMemeoryFullFlag()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-static {v0}, Lcom/android/phone/PhoneRecorder;->diskSpaceAvailable(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/phone/PhoneRecorder;->mPhoneMemeoryFullFlag:Z

    .line 360
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

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 341
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

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 340
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 341
    goto :goto_0
.end method

.method public static sdcardFullFlag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-static {v0}, Lcom/android/phone/PhoneRecorder;->diskSpaceAvailable(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    .line 192
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRecordFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getFlagRecord()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 355
    const-string v0, "PhoneRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 346
    const-string v0, "PhoneRecorder"

    const-string v1, "MediaRecorder error..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method public saveSample()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->sampleLength()I

    move-result v3

    if-nez v3, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v2

    .line 203
    :cond_1
    const/4 v1, 0x0

    .line 205
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    .line 214
    const/4 v2, 0x1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public setCallerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "phoneNumber"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/phone/Recorder;->callerName:Ljava/lang/String;

    .line 369
    iput-object p2, p0, Lcom/android/phone/Recorder;->callerPhoneNumber:Ljava/lang/String;

    .line 370
    const-string v0, "PhoneRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallerName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Recorder;->callerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Recorder;->callerPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method public setExternalStorage(Z)V
    .locals 0
    .parameter "storeToSdcard"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/android/phone/Recorder;->isStoreToSdcard:Z

    .line 365
    return-void
.end method

.method public startRecord()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 73
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

    .line 74
    sget-boolean v2, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    if-eqz v2, :cond_0

    .line 105
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    .local v0, filePath:Ljava/lang/String;
    :try_start_0
    const-string v2, "audio/amr"

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    const/4 v2, 0x3

    const-string v3, ".amr"

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneRecorder;->startRecording(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_1
    if-eqz v0, :cond_1

    .line 94
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    new-instance v3, Lcom/android/phone/Recorder$CallerRecordInfo;

    iget-object v4, p0, Lcom/android/phone/Recorder;->callerPhoneNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/Recorder;->callerName:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/phone/Recorder$CallerRecordInfo;-><init>(Lcom/android/phone/Recorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->addCallRecord(Lcom/android/phone/Recorder$CallerRecordInfo;)V

    .line 98
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneRecorder;->setRecordFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, oe:Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneRecorder;->setRecordFlag(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    .end local v1           #oe:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v2, "audio/3gpp"

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    const/4 v2, 0x1

    const-string v3, ".3gpp"

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneRecorder;->startRecording(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_3
    const-string v2, "audio/*"

    iget-object v3, p0, Lcom/android/phone/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    const/4 v2, 0x1

    const-string v3, ".3gpp"

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneRecorder;->startRecording(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 90
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
    .line 108
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/android/phone/Recorder;->stop()V

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    goto :goto_0
.end method

.method public stopRecord(Z)V
    .locals 7
    .parameter "mount"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 116
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mFlagRecord:Z

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v0, "stopRecord"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->stop()V

    .line 122
    iget-boolean v0, p0, Lcom/android/phone/Recorder;->isStoreToSdcard:Z

    if-eqz v0, :cond_3

    .line 124
    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->saveSample()Z

    .line 126
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mSDcardFullFlag:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c029d

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->delete()V

    .line 136
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneRecorder;->saveSample()Z

    .line 144
    sget-boolean v0, Lcom/android/phone/PhoneRecorder;->mPhoneMemeoryFullFlag:Z

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02af

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/PhoneRecorder;->mFileName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
