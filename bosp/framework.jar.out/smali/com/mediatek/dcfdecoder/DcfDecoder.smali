.class public Lcom/mediatek/dcfdecoder/DcfDecoder;
.super Ljava/lang/Object;
.source "DcfDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DcfDecoder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "dcfdecoderjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pathName"
    .parameter "opts"
    .parameter "consume"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 95
    const-string v1, "DRM/DcfDecoder"

    const-string v2, "decodeFile: find null file name!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    .line 98
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "cr"
    .parameter "uri"
    .parameter "opts"
    .parameter "consume"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p0, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, filepath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 140
    const-string v2, "DRM/DcfDecoder"

    const-string v3, "decodeUri: can not get file path from uri!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v2, 0x0

    .line 143
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static forceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pathName"
    .parameter "opts"
    .parameter "consume"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 117
    const-string v1, "DRM/DcfDecoder"

    const-string v2, "forceDecodeFile: find null file name!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeForceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static forceDecodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "cr"
    .parameter "uri"
    .parameter "opts"
    .parameter "consume"

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p0, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, filepath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 164
    const-string v2, "DRM/DcfDecoder"

    const-string v3, "forceDecodeUri: can not get file path from uri!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, 0x0

    .line 167
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 178
    const/4 v8, 0x0

    .line 180
    .local v8, filepath:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 181
    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: find null ContentResolver!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 228
    :goto_0
    return-object v0

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: find null uri!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 186
    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, uriStr:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 191
    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: convert Uri object to String failed!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    const-string v0, "content://media"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    const/4 v6, 0x0

    .line 198
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    if-nez v6, :cond_4

    .line 200
    const-string v0, "DRM/DcfDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilepathFromUri:not cursor returned for Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v10

    goto :goto_0

    .line 203
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v11, v0, :cond_6

    .line 204
    const-string v0, "DRM/DcfDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilepathFromUri:record number in returned cursor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    goto :goto_0

    .line 207
    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 216
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v6           #c:Landroid/database/Cursor;
    :cond_7
    :goto_1
    if-nez v8, :cond_c

    .line 221
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 222
    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: Drm uri does not starts with file:// , return null Bitmap"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 223
    goto/16 :goto_0

    .line 210
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_8
    :try_start_3
    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri:move to first record of cursor failed!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 216
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v10

    goto/16 :goto_0

    .line 213
    :catch_0
    move-exception v7

    .line 214
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v0, "DcfDecoder"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 225
    .end local v6           #c:Landroid/database/Cursor;
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    :cond_c
    move-object v0, v8

    .line 228
    goto/16 :goto_0
.end method

.method private static native nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method private static native nativeForceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method
