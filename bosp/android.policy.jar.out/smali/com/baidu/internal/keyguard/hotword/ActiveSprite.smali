.class public Lcom/baidu/internal/keyguard/hotword/ActiveSprite;
.super Ljava/lang/Object;
.source "ActiveSprite.java"


# static fields
.field private static ACTIVE_URL:Ljava/lang/String; = null

.field private static DEBUG_ACTIVE_URL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ActiveSprite"

.field private static TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "http://dbl-chunlei-rd07.vm.baidu.com:8010/commonapi/keyguardactive"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->DEBUG_ACTIVE_URL:Ljava/lang/String;

    .line 36
    const-string v0, "http://suoping.baidu.com/commonapi/keyguardactive"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->ACTIVE_URL:Ljava/lang/String;

    .line 38
    const-string v0, "keyguardactive"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->doPostActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static active(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/ActiveSprite$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/ActiveSprite$1;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, activeThread:Ljava/lang/Thread;
    const-string v1, "hotword_update"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "is"

    .prologue
    .line 145
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 146
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 149
    .local v1, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 156
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 157
    :catch_2
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 156
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 159
    :goto_2
    throw v4

    .line 157
    :catch_3
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static doPostActive(Landroid/content/Context;)Z
    .locals 21
    .parameter "context"

    .prologue
    .line 87
    const/4 v14, 0x0

    .line 89
    .local v14, postSuccess:Z
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v13, parmas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "type"

    sget-object v20, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->TYPE:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, cip:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    .line 93
    .local v18, time:Ljava/lang/String;
    const-string v19, "cip"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v19, "time"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v19, "sign"

    sget-object v20, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->TYPE:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getClientKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v19, "uid"

    invoke-static/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v19, "uuid"

    invoke-static/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v19, "channelid"

    const-string v20, "1000466m"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v19, "versioncode"

    const-string v20, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 102
    .local v3, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    sget-object v19, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->ACTIVE_URL:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 104
    .local v7, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v12, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-eqz v13, :cond_0

    .line 106
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 107
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 108
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 109
    .local v9, key:Ljava/lang/String;
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v8           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v19, "utf-8"

    move-object/from16 v0, v19

    invoke-direct {v11, v12, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 118
    .local v11, p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    const v19, 0xf00a

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 123
    invoke-virtual {v3, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 124
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 125
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 126
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 127
    .local v4, content:Ljava/io/InputStream;
    invoke-static {v4}, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, returnConnection:Ljava/lang/String;
    const-string v19, "ActiveSprite"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v17}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v16, ret:Lorg/json/JSONObject;
    const-string v19, "code"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 131
    const/4 v14, 0x1

    .line 132
    const-string v19, "ActiveSprite"

    const-string v20, "Active success"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    .end local v4           #content:Ljava/io/InputStream;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #ret:Lorg/json/JSONObject;
    .end local v17           #returnConnection:Ljava/lang/String;
    :cond_1
    :goto_1
    return v14

    .line 134
    :catch_0
    move-exception v5

    .line 135
    .local v5, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v5           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    .line 137
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 139
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
