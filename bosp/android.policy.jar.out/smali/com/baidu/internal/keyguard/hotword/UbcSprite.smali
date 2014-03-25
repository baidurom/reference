.class public Lcom/baidu/internal/keyguard/hotword/UbcSprite;
.super Ljava/lang/Object;
.source "UbcSprite.java"


# static fields
.field private static DEBUG_UBC_URL:Ljava/lang/String; = null

.field private static final GZIP_HEAD_1:B = 0x75t

.field private static final GZIP_HEAD_2:B = 0x7bt

.field private static final STATISTIC_USER_BEHAVIOUR:Ljava/lang/String; = "03"

.field private static final TAG:Ljava/lang/String; = "UbcSprite"

.field private static TYPE:Ljava/lang/String;

.field private static UBC_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "http://dbl-chunlei-rd07.vm.baidu.com:8010/commonapi/keyguardbehavior"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->DEBUG_UBC_URL:Ljava/lang/String;

    .line 44
    const-string v0, "http://suoping.baidu.com/commonapi/keyguardbehavior"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->UBC_URL:Ljava/lang/String;

    .line 48
    const-string v0, "keyguardbehavior"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->UBC_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->getPostData(Landroid/content/Context;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildPostContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 132
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    move-result-object v0

    .line 133
    .local v0, mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    new-array v2, v13, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v2, v12

    .line 136
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "ubc"

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, configCursor:Landroid/database/Cursor;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 139
    .local v9, jsonArray:Lorg/json/JSONArray;
    if-eqz v6, :cond_0

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 143
    :catch_0
    move-exception v7

    .line 144
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 149
    .end local v7           #e:Lorg/json/JSONException;
    :cond_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v10, jsonobj:Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "03"

    invoke-virtual {v10, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 157
    .local v11, value:[B
    invoke-static {v11}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->gZip([B)[B

    move-result-object v8

    .line 159
    .local v8, gzipvalue:[B
    const/16 v1, 0x75

    aput-byte v1, v8, v12

    .line 160
    const/16 v1, 0x7b

    aput-byte v1, v8, v13

    .line 162
    invoke-static {v8, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    .end local v8           #gzipvalue:[B
    .end local v11           #value:[B
    :catch_1
    move-exception v7

    .line 153
    .restart local v7       #e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "is"

    .prologue
    .line 166
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 170
    .local v1, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 177
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 177
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 180
    :goto_2
    throw v4

    .line 178
    :catch_3
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getPostData(Landroid/content/Context;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, cip:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, time:Ljava/lang/String;
    sget-object v10, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->TYPE:Ljava/lang/String;

    invoke-static {v10, v0, v9}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getClientKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, clientKey:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v7, parmas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "type"

    sget-object v11, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->TYPE:Ljava/lang/String;

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v10, "cip"

    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v10, "time"

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v10, "sign"

    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v10, "uid"

    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v10, "uuid"

    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v10, "channelid"

    const-string v11, "1000466m"

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v10, "versioncode"

    const-string v11, "1"

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->buildPostContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, postContent:Ljava/lang/String;
    const-string v10, "records"

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v6, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-eqz v7, :cond_0

    .line 121
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 122
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, key:Ljava/lang/String;
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v3, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "utf-8"

    invoke-direct {v5, v6, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 128
    .local v5, p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    return-object v5
.end method

.method public static upload(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/UbcSprite$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/UbcSprite$1;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, ubcUploadThread:Ljava/lang/Thread;
    const-string v1, "hotword_ubc_upload"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method
