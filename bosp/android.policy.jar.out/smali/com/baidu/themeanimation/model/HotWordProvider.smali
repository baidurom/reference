.class public Lcom/baidu/themeanimation/model/HotWordProvider;
.super Landroid/content/ContentProvider;
.source "HotWordProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/model/HotWordProvider$1;,
        Lcom/baidu/themeanimation/model/HotWordProvider$H;,
        Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;
    }
.end annotation


# static fields
.field public static final AUTOHORITY:Ljava/lang/String; = "com.baidu.themeanimation.hotwords"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DBG:Z = true

.field public static final DB_NAME:Ljava/lang/String; = "hotworddb"

.field private static final HTTP_CONN_TIMEOUT:I = 0x1b58

.field private static final HTTP_METHOD:Ljava/lang/String; = "POST"

.field private static final HTTP_TAG:Ljava/lang/String; = "http"

.field private static final HTTP_TIMEOUT:I = 0x1b58

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INFO:Ljava/lang/String; = "info"

.field private static final REFREASH_INTERVAL:J = 0xdbba0L

.field public static final TABLE_NAME:Ljava/lang/String; = "hotwordtable"

.field public static final VERSION:I = 0x1


# instance fields
.field dBlite:Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field private mHandler:Landroid/os/Handler;

.field private mKeywordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdateKeywordTime:J

.field mStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "content://com.baidu.themeanimation.hotwords/hotwordtable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/themeanimation/model/HotWordProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mKeywordList:Ljava/util/ArrayList;

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mLastUpdateKeywordTime:J

    .line 137
    new-instance v0, Lcom/baidu/themeanimation/model/HotWordProvider$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/themeanimation/model/HotWordProvider$H;-><init>(Lcom/baidu/themeanimation/model/HotWordProvider;Lcom/baidu/themeanimation/model/HotWordProvider$1;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mHandler:Landroid/os/Handler;

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/model/HotWordProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/themeanimation/model/HotWordProvider;->getKeyWord()V

    return-void
.end method

.method private getKeyWord()V
    .locals 12

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 157
    .local v1, currentTime:J
    iget-wide v8, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mLastUpdateKeywordTime:J

    sub-long v4, v1, v8

    .line 158
    .local v4, intervals:J
    const-string v8, "http"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getKeyWord at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", last update time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mLastUpdateKeywordTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/baidu/themeanimation/model/HotWordProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 163
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 164
    .local v6, netInfo:Landroid/net/NetworkInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_2

    const-wide/32 v8, 0xdbba0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    .line 169
    :cond_2
    const-string v7, "http://box.os.baidu.com/hitspot?num=49"

    .line 171
    .local v7, url:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v8, 0x3

    if-ge v3, v8, :cond_0

    .line 172
    invoke-direct {p0, v7}, Lcom/baidu/themeanimation/model/HotWordProvider;->sugQuery(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 173
    iget-object v8, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mKeywordList:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/baidu/themeanimation/model/HotWordProvider;->refresh(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 171
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private refresh(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->dBlite:Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    iget-object v6, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 110
    const-string v4, "Delete from hotwordtable"

    .line 111
    .local v4, sql:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v5, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 114
    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, keyword:Ljava/lang/String;
    const-string v6, "id"

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v6, "info"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v6, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "hotwordtable"

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 119
    .end local v3           #keyword:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 120
    iget-object v6, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    return-void
.end method

.method private sugQuery(Ljava/lang/String;)Z
    .locals 26
    .parameter "userQuery"

    .prologue
    .line 181
    const/4 v6, 0x0

    .line 182
    .local v6, conn:Ljava/net/HttpURLConnection;
    const/4 v15, 0x0

    .line 183
    .local v15, isPostSuccess:Z
    const/16 v18, 0x0

    .line 185
    .local v18, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    .local v19, queryURL:Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 188
    const-string v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 189
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 190
    const/16 v22, 0x1b58

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 191
    const/16 v22, 0x1b58

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 192
    const-string v22, "Content-Length"

    const-string v23, "0"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 195
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 197
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 198
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    .line 199
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 200
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 201
    .local v20, resCode:I
    const-string v22, "http"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "resCode : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 202
    const/16 v22, 0xc8

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 203
    const/4 v15, 0x0

    .line 220
    :cond_0
    if-eqz v18, :cond_1

    .line 221
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    .end local v19           #queryURL:Ljava/net/URL;
    .end local v20           #resCode:I
    :cond_1
    :goto_0
    const/4 v11, 0x0

    .line 232
    .local v11, fout:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 233
    .local v14, inputStream:Ljava/io/InputStream;
    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/themeanimation/model/HotWordProvider;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/keywords"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_e

    .line 234
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .local v12, fout:Ljava/io/FileOutputStream;
    const/16 v22, 0x400

    :try_start_3
    move/from16 v0, v22

    new-array v5, v0, [B

    .line 235
    .local v5, buffer:[B
    const/16 v17, 0x0

    .line 236
    .local v17, length:I
    const-string v7, ""

    .line 240
    .local v7, content:Ljava/lang/String;
    :goto_1
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 241
    if-gez v17, :cond_6

    .line 247
    const-string v22, "http"

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 250
    const/4 v15, 0x0

    .line 251
    const-string v22, "http"

    const-string v23, "Nothing is got from server."

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_a

    .line 283
    :goto_2
    if-eqz v12, :cond_2

    .line 284
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_2
    if-eqz v6, :cond_3

    .line 287
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    :cond_3
    move-object v11, v12

    .line 293
    .end local v5           #buffer:[B
    .end local v7           #content:Ljava/lang/String;
    .end local v12           #fout:Ljava/io/FileOutputStream;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .end local v17           #length:I
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    :cond_4
    :goto_3
    return v15

    .line 223
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v19       #queryURL:Ljava/net/URL;
    .restart local v20       #resCode:I
    :catch_0
    move-exception v10

    .line 225
    .local v10, ex:Ljava/io/IOException;
    const-string v22, "Exception HotWordProvider: sugQuery"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "finally IOException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v10           #ex:Ljava/io/IOException;
    .end local v19           #queryURL:Ljava/net/URL;
    .end local v20           #resCode:I
    :catch_1
    move-exception v9

    .line 207
    .local v9, e:Ljava/net/MalformedURLException;
    :try_start_5
    const-string v22, "Exception HotWordProvider: sugQuery"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MalformedURLException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    const/4 v15, 0x0

    .line 220
    if-eqz v18, :cond_1

    .line 221
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 223
    :catch_2
    move-exception v10

    .line 225
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v22, "Exception HotWordProvider: sugQuery"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "finally IOException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v9           #e:Ljava/net/MalformedURLException;
    .end local v10           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 212
    .local v9, e:Ljava/net/ProtocolException;
    :try_start_7
    const-string v22, "Exception HotWordProvider: sugQuery"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ProtocolException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 213
    const/4 v15, 0x0

    .line 220
    if-eqz v18, :cond_1

    .line 221
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 223
    :catch_4
    move-exception v10

    .line 225
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v22, "Exception HotWordProvider: sugQuery"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "finally IOException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    .end local v9           #e:Ljava/net/ProtocolException;
    .end local v10           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 215
    .restart local v10       #ex:Ljava/io/IOException;
    const/4 v15, 0x0

    .line 217
    :try_start_9
    const-string v22, "Exception HotWordProvider: sugQuery"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IOException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 220
    if-eqz v18, :cond_1

    .line 221
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 223
    :catch_6
    move-exception v10

    .line 225
    const-string v22, "Exception HotWordProvider: sugQuery"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "finally IOException "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 220
    if-eqz v18, :cond_5

    .line 221
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 227
    :cond_5
    :goto_4
    throw v22

    .line 223
    :catch_7
    move-exception v10

    .line 225
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v23, "Exception HotWordProvider: sugQuery"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "finally IOException "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 243
    .end local v10           #ex:Ljava/io/IOException;
    .restart local v5       #buffer:[B
    .restart local v7       #content:Ljava/lang/String;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #inputStream:Ljava/io/InputStream;
    .restart local v17       #length:I
    :cond_6
    :try_start_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    const-string v25, "UTF-8"

    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 253
    :cond_7
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .local v8, data:Lorg/json/JSONObject;
    const-string v22, "status"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 255
    .local v21, status:I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 256
    const/4 v15, 0x1

    .line 257
    const-string v22, "words"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 258
    .local v4, arrayJson:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 259
    .local v16, key_length:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/themeanimation/model/HotWordProvider;->mKeywordList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    const-string v22, "http"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "fetch "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 264
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/themeanimation/model/HotWordProvider;->mLastUpdateKeywordTime:J

    .line 266
    const-string v22, "http"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mLastUpdateKeywordTime : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/themeanimation/model/HotWordProvider;->mLastUpdateKeywordTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v22, "UTF-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 269
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileDescriptor;->sync()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_2

    .line 275
    .end local v4           #arrayJson:Lorg/json/JSONArray;
    .end local v5           #buffer:[B
    .end local v7           #content:Ljava/lang/String;
    .end local v8           #data:Lorg/json/JSONObject;
    .end local v13           #i:I
    .end local v16           #key_length:I
    .end local v17           #length:I
    .end local v21           #status:I
    :catch_8
    move-exception v10

    move-object v11, v12

    .line 276
    .end local v12           #fout:Ljava/io/FileOutputStream;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .restart local v10       #ex:Ljava/io/IOException;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    :goto_6
    const/4 v15, 0x0

    .line 277
    :try_start_d
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 283
    if-eqz v11, :cond_9

    .line 284
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_9
    if-eqz v6, :cond_4

    .line 287
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_3

    .line 289
    :catch_9
    move-exception v10

    .line 290
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 271
    .end local v10           #ex:Ljava/io/IOException;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v5       #buffer:[B
    .restart local v7       #content:Ljava/lang/String;
    .restart local v8       #data:Lorg/json/JSONObject;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #inputStream:Ljava/io/InputStream;
    .restart local v17       #length:I
    .restart local v21       #status:I
    :cond_a
    const/4 v15, 0x0

    .line 272
    :try_start_f
    const-string v22, "http"

    const-string v23, "The status is error. No data is got from server."

    invoke-static/range {v22 .. v23}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_2

    .line 278
    .end local v5           #buffer:[B
    .end local v7           #content:Ljava/lang/String;
    .end local v8           #data:Lorg/json/JSONObject;
    .end local v17           #length:I
    .end local v21           #status:I
    :catch_a
    move-exception v9

    move-object v11, v12

    .line 279
    .end local v12           #fout:Ljava/io/FileOutputStream;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .local v9, e:Lorg/json/JSONException;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    :goto_7
    const/4 v15, 0x0

    .line 280
    :try_start_10
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 283
    if-eqz v11, :cond_b

    .line 284
    :try_start_11
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_b
    if-eqz v6, :cond_4

    .line 287
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_3

    .line 289
    :catch_b
    move-exception v10

    .line 290
    .restart local v10       #ex:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 289
    .end local v9           #e:Lorg/json/JSONException;
    .end local v10           #ex:Ljava/io/IOException;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v5       #buffer:[B
    .restart local v7       #content:Ljava/lang/String;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #inputStream:Ljava/io/InputStream;
    .restart local v17       #length:I
    :catch_c
    move-exception v10

    .line 290
    .restart local v10       #ex:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    .line 292
    .end local v12           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 282
    .end local v5           #buffer:[B
    .end local v7           #content:Ljava/lang/String;
    .end local v10           #ex:Ljava/io/IOException;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .end local v17           #length:I
    :catchall_1
    move-exception v22

    .line 283
    :goto_8
    if-eqz v11, :cond_c

    .line 284
    :try_start_12
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_c
    if-eqz v6, :cond_d

    .line 287
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 291
    :cond_d
    :goto_9
    throw v22

    .line 289
    :catch_d
    move-exception v10

    .line 290
    .restart local v10       #ex:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 282
    .end local v10           #ex:Ljava/io/IOException;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #inputStream:Ljava/io/InputStream;
    :catchall_2
    move-exception v22

    move-object v11, v12

    .end local v12           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 278
    .end local v14           #inputStream:Ljava/io/InputStream;
    :catch_e
    move-exception v9

    goto :goto_7

    .line 275
    :catch_f
    move-exception v10

    goto :goto_6
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 84
    iget-object v3, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->dBlite:Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    iget-object v3, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "hotwordtable"

    const-string v5, ""

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 88
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 89
    sget-object v3, Lcom/baidu/themeanimation/model/HotWordProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 90
    .local v0, noteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/model/HotWordProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 91
    return-object v0

    .line 93
    .end local v0           #noteUri:Landroid/net/Uri;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;

    invoke-virtual {p0}, Lcom/baidu/themeanimation/model/HotWordProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;-><init>(Lcom/baidu/themeanimation/model/HotWordProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->dBlite:Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;

    .line 102
    iget-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 301
    iget-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->dBlite:Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/HotWordProvider$DBlite;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 303
    const-string v0, "http"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStartIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hotwordtable"

    const-string v3, "id >= ?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    iget v2, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 307
    .local v8, c:Landroid/database/Cursor;
    iget v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    .line 308
    iget v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    const/16 v1, 0x31

    if-lt v0, v1, :cond_1

    .line 309
    iput v9, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    .line 315
    :cond_0
    :goto_0
    return-object v8

    .line 311
    :cond_1
    iget v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    rsub-int/lit8 v0, v0, 0x31

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 312
    const/16 v0, 0x2a

    iput v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider;->mStartIndex:I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method
