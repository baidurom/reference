.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_BLOCKED:I = 0x3f2

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mPackageName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 304
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data AS local_filename"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mediaprovider_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mimetype AS media_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "total_bytes AS total_size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lastmod AS last_modified_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "current_bytes AS bytes_so_far"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\'placeholder\' AS local_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\'placeholder\' AS reason"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "packageName"

    .prologue
    .line 883
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 878
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 884
    iput-object p1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 885
    iput-object p2, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 886
    return-void
.end method

.method public static getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 1135
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .parameter "context"

    .prologue
    .line 1101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "download_manager_max_bytes_over_mobile"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1104
    :goto_0
    return-object v1

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, exc:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .parameter "context"

    .prologue
    .line 1119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1122
    :goto_0
    return-object v1

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, exc:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .parameter "ids"

    .prologue
    .line 1231
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1232
    .local v1, whereArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1233
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .parameter "ids"

    .prologue
    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1215
    .local v1, whereClause:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1217
    if-lez v0, :cond_0

    .line 1218
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1223
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isActiveNetworkExpensive(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1129
    const/4 v0, 0x0

    return v0
.end method

.method private static validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "paramName"
    .parameter "val"

    .prologue
    .line 1198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1201
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 7
    .parameter "title"
    .parameter "description"
    .parameter "isMediaScannerScannable"
    .parameter "mimeType"
    .parameter "path"
    .parameter "length"
    .parameter "showNotification"

    .prologue
    const/4 v4, 0x2

    .line 1164
    const-string/jumbo v3, "title"

    invoke-static {v3, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v3, "description"

    invoke-static {v3, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v3, "path"

    invoke-static {v3, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v3, "mimeType"

    invoke-static {v3, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-wide/16 v5, 0x0

    cmp-long v3, p6, v5

    if-gez v3, :cond_0

    .line 1169
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, " invalid value for param: totalBytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1173
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    const-string/jumbo v5, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    .line 1177
    .local v1, request:Landroid/app/DownloadManager$Request;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1178
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "destination"

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    const-string v3, "_data"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string/jumbo v3, "status"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1182
    const-string/jumbo v3, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1183
    const-string/jumbo v5, "scanned"

    if-eqz p3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-string/jumbo v3, "visibility"

    if-eqz p8, :cond_1

    const/4 v4, 0x3

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1189
    .local v0, downloadUri:Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 1190
    const-wide/16 v3, -0x1

    .line 1192
    :goto_1
    return-wide v3

    .end local v0           #downloadUri:Landroid/net/Uri;
    :cond_2
    move v3, v4

    .line 1183
    goto :goto_0

    .line 1192
    .restart local v0       #downloadUri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1
.end method

.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .parameter "request"

    .prologue
    .line 910
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 911
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 912
    .local v0, downloadUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 913
    .local v1, id:J
    return-wide v1
.end method

.method getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "id"

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1044
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 1045
    .local v1, query:Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 1047
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1048
    if-nez v0, :cond_1

    .line 1055
    if-eqz v0, :cond_0

    .line 1056
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1060
    :cond_0
    return-object v2

    .line 1051
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1052
    const-string/jumbo v2, "media_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1055
    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 1056
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_2
    throw v2

    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public getUriForDownloadedFile(J)Landroid/net/Uri;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 992
    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v8, v10, [J

    const/4 v9, 0x0

    aput-wide p1, v8, v9

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v4

    .line 993
    .local v4, query:Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 995
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 996
    if-nez v0, :cond_1

    .line 1023
    if-eqz v0, :cond_0

    .line 1024
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1028
    :cond_0
    return-object v6

    .line 999
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1000
    const-string/jumbo v7, "status"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1001
    .local v5, status:I
    const/16 v7, 0x8

    if-ne v7, v5, :cond_5

    .line 1002
    const-string v6, "destination"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1004
    .local v2, indx:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1008
    .local v1, destination:I
    if-eq v1, v10, :cond_2

    const/4 v6, 0x5

    if-eq v1, v6, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    .line 1013
    :cond_2
    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1023
    if-eqz v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_3
    const-string v6, "local_filename"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, path:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1023
    if-eqz v0, :cond_0

    goto :goto_0

    .end local v1           #destination:I
    .end local v2           #indx:I
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #status:I
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_4

    .line 1024
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1023
    :cond_4
    throw v6

    :cond_5
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public varargs markRowDeleted([J)I
    .locals 6
    .parameter "ids"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 926
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 928
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 931
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    array-length v1, p1

    if-ne v1, v3, :cond_2

    .line 935
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 938
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 4
    .parameter "query"

    .prologue
    .line 961
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 962
    .local v0, underlyingCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 963
    const/4 v1, 0x0

    .line 965
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs remove([J)I
    .locals 1
    .parameter "ids"

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public varargs restartDownload([J)V
    .locals 7
    .parameter "ids"

    .prologue
    .line 1070
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1072
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1073
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1074
    .local v1, status:I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 1075
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot restart incomplete download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1072
    .restart local v1       #status:I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1080
    .end local v1           #status:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1083
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1088
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .parameter "accessAllDownloads"

    .prologue
    .line 894
    if-eqz p1, :cond_0

    .line 895
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0
.end method
