.class public Lcom/baidu/internal/contacts/YellowInfoHelper;
.super Ljava/lang/Object;
.source "YellowInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;,
        Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;,
        Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
    }
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMNS_FULL:[Ljava/lang/String; = null

.field public static final COLUMN_NAME:I = 0x1

.field public static final COLUMN_NUMBER:I = 0x0

.field public static final COLUMN_PHOTO:I = 0x2

.field public static final DBG:Z = false

.field public static final KEY_LISTENER:Ljava/lang/String; = "listener"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final TAG:Ljava/lang/String; = "YellowInfoHelper"

.field private static mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;


# instance fields
.field public INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

.field public INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

.field private mContext:Landroid/content/Context;

.field private mDefaultBytes:[B

.field private mResolver:Landroid/content/ContentResolver;

.field private mYellowInfoCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "number"

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "photo"

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS_FULL:[Ljava/lang/String;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "number"

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    .line 82
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[BI)V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 89
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[BI)V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 129
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mContext:Landroid/content/Context;

    .line 130
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    .line 131
    iput-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mDefaultBytes:[B

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 134
    .local v9, res:Landroid/content/res/Resources;
    const v0, #drawable@yi_ic_yellow_pages_holo_light#t

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 136
    .local v7, bmp:Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v7, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mDefaultBytes:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v8

    .line 140
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "YellowInfoHelper"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/contacts/YellowInfoHelper;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    return-object v0
.end method

.method private cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x2

    .line 239
    if-nez p1, :cond_1

    .line 240
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 271
    :cond_0
    :goto_0
    return-object v2

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 247
    .local v2, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, columnCount:I
    move-object v3, v2

    .line 248
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .local v3, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, number:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 252
    .local v6, photo:[B
    if-le v0, v8, :cond_2

    .line 253
    const/4 v7, 0x2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 254
    if-nez v6, :cond_2

    .line 255
    iget-object v6, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mDefaultBytes:[B

    .line 258
    :cond_2
    new-instance v2, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    invoke-direct {v2, p0, v5, v4, v6}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :try_start_2
    iget-object v7, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    invoke-interface {v7, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .line 263
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_1

    .line 267
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #photo:[B
    :cond_3
    if-eqz p1, :cond_5

    .line 268
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_0

    .line 264
    .end local v0           #columnCount:I
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v7, "YellowInfoHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    if-eqz p1, :cond_0

    .line 268
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 267
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz p1, :cond_4

    .line 268
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v7

    .line 267
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v0       #columnCount:I
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_3

    .line 264
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_2

    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_5
    move-object v2, v3

    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/internal/contacts/YellowInfoHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    sget-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper;

    invoke-direct {v0, p0}, Lcom/baidu/internal/contacts/YellowInfoHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    .line 124
    :cond_0
    sget-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    return-object v0
.end method

.method private queryInfoFromDatabase(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 9
    .parameter "number"

    .prologue
    .line 227
    iget-object v8, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 228
    .local v8, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    sget-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 230
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS_FULL:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, c:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/baidu/internal/contacts/YellowInfoHelper;->cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 235
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 232
    :catch_0
    move-exception v7

    .line 233
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "YellowInfoHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static trimNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 280
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    const-string v4, ""

    .line 291
    :goto_0
    return-object v4

    .line 283
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 285
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 286
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 287
    .local v0, chr:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    const/16 v4, 0x39

    if-gt v0, v4, :cond_1

    .line 288
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    .end local v0           #chr:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 3
    .parameter "input"

    .prologue
    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 181
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->trimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, number:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 176
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_0

    .line 181
    .end local v0           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    goto :goto_0
.end method

.method public queryYellowInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 3
    .parameter "input"

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    invoke-static {p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->trimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, number:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    .line 197
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget v2, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->hasPhoto()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    :cond_2
    invoke-direct {p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->queryInfoFromDatabase(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public queryYellowInfoAsync(Ljava/lang/String;Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;)V
    .locals 10
    .parameter "input"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-static {p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->trimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, number:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v8

    .line 211
    .local v8, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget v1, v8, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    if-eqz v1, :cond_0

    .line 212
    invoke-interface {p2, v8}, Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;->onComplete(Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;)V

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "listener"

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v1, "number"

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/baidu/internal/contacts/YellowPagesContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 221
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;

    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/content/ContentResolver;)V

    .line 222
    .local v0, handler:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
    const/4 v1, 0x0

    sget-object v4, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS_FULL:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCacheAllInfo(Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 151
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "listener"

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v1, "number"

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v3, Lcom/baidu/internal/contacts/YellowPagesContract;->CONTENT_URI:Landroid/net/Uri;

    .line 155
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;

    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/content/ContentResolver;)V

    .line 156
    .local v0, handler:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
    const/4 v1, 0x0

    sget-object v4, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
