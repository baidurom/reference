.class public Lbaidu/net/sip/extension/SipHttpUtilites;
.super Ljava/lang/Object;
.source "SipHttpUtilites.java"


# static fields
.field private static final HTTP_PARAMNAME_BDUSS:Ljava/lang/String; = "bduss"

.field private static final HTTP_PARAMNAME_DEVICE_ID:Ljava/lang/String; = "deviceid"

.field private static final HTTP_PARAMNAME_QUERY:Ljava/lang/String; = "query"

.field private static final HTTP_PARAMNAME_VERSION:Ljava/lang/String; = "cver"

.field private static final JSON_NAME_ERR:Ljava/lang/String; = "err"

.field private static final JSON_NAME_ERRINFO:Ljava/lang/String; = "errInfo"

.field private static final JSON_NAME_ERRNUM:Ljava/lang/String; = "errNum"

.field private static final JSON_NAME_INFO:Ljava/lang/String; = "info"

.field private static final JSON_NAME_QUERYSTR:Ljava/lang/String; = "qs"

.field private static final JSON_NAME_QUERYTYPE:Ljava/lang/String; = "qt"

.field private static final JSON_NAME_SBCIP:Ljava/lang/String; = "sbcIP"

.field private static final JSON_NAME_SBCPORT:Ljava/lang/String; = "sbcPort"

.field private static final JSON_NAME_SIPID:Ljava/lang/String; = "sipID"

.field private static final JSON_NAME_SIPPASSWD:Ljava/lang/String; = "sipPasswd"

.field private static final JSON_NAME_STATUS:Ljava/lang/String; = "status"

.field private static final JSON_NAME_UEMAIL:Ljava/lang/String; = "email"

.field private static final JSON_NAME_UNAME:Ljava/lang/String; = "uname"

.field private static final JSON_NAME_UPHONE:Ljava/lang/String; = "phone"

.field private static final JSON_NAME_USIPID:Ljava/lang/String; = "sipid"

.field private static final JSON_NAME_USTATUS:Ljava/lang/String; = "ustatus"

.field private static final JSON_NAME_UUID:Ljava/lang/String; = "uuid"

.field private static final MAGIC_NUM_FAILED:I = 0x1

.field private static final MAGIC_NUM_SUCCESS:I = 0x0

.field private static final PROV_SERVER_IP:Ljava/lang/String; = "220.181.112.246"

.field private static final PROV_SERVER_LOGIN_PATH:Ljava/lang/String; = "/callyi/login/check.action"

.field private static final PROV_SERVER_LOGIN_QUERY:Ljava/lang/String; = "bduss="

.field private static final PROV_SERVER_SEARCH_DEVICE_ID:Ljava/lang/String; = "deviceid="

.field private static final PROV_SERVER_SEARCH_PATH:Ljava/lang/String; = "/callyi/search.action"

.field private static final PROV_SERVER_SEARCH_QUERY:Ljava/lang/String; = "query="

.field private static final TAG:Ljava/lang/String; = null

.field private static count:I = 0x0

.field private static final version:Ljava/lang/String; = "1.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lbaidu/net/sip/extension/SipHttpUtilites;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput v0, Lbaidu/net/sip/extension/SipHttpUtilites;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "type"
    .parameter "content"

    .prologue
    .line 517
    sget-object v4, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    const-string v4, "Request"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 519
    sget v4, Lbaidu/net/sip/extension/SipHttpUtilites;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lbaidu/net/sip/extension/SipHttpUtilites;->count:I

    .line 521
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/mnt/sdcard/voip_log"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 523
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 525
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lbaidu/net/sip/extension/SipHttpUtilites;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 528
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 530
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 531
    .local v3, w:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 532
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #w:Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 535
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 537
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getJSONString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lbaidu/net/sip/extension/QueryItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<Lbaidu/net/sip/extension/QueryItem;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 478
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbaidu/net/sip/extension/QueryItem;

    .line 479
    .local v3, item:Lbaidu/net/sip/extension/QueryItem;
    iget-object v5, v3, Lbaidu/net/sip/extension/QueryItem;->qs:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 480
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 482
    .local v4, object:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "qt"

    iget v6, v3, Lbaidu/net/sip/extension/QueryItem;->qt:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 483
    const-string/jumbo v5, "qs"

    iget-object v6, v3, Lbaidu/net/sip/extension/QueryItem;->qs:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string/jumbo v5, "uuid"

    iget v6, v3, Lbaidu/net/sip/extension/QueryItem;->uuid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 485
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #item:Lbaidu/net/sip/extension/QueryItem;
    .end local v4           #object:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 491
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 493
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getNewHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 9

    .prologue
    .line 498
    const-string v5, "SipHttpClient"

    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 500
    .local v1, httpClient:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 501
    .local v4, trustStore:Ljava/security/KeyStore;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 503
    new-instance v3, Lbaidu/net/sip/extension/SipSSLSocketFactory;

    invoke-direct {v3, v4}, Lbaidu/net/sip/extension/SipSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 504
    .local v3, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 506
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 507
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 508
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v2           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v4           #trustStore:Ljava/security/KeyStore;
    :goto_0
    return-object v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getSipProfileByBDUSS(Lbaidu/net/sip/extension/UserProfile;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lbaidu/net/sip/SipProfile;
    .locals 18
    .parameter "user"
    .parameter "bduss"
    .parameter "baiduName"
    .parameter "secure"
    .parameter "deviceId"

    .prologue
    .line 102
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 148
    :goto_0
    return-object v2

    .line 103
    :cond_0
    invoke-static {}, Lbaidu/net/sip/extension/SipHttpUtilites;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v10

    .line 106
    .local v10, httpClient:Landroid/net/http/AndroidHttpClient;
    if-eqz p3, :cond_1

    .line 107
    :try_start_0
    const-string v2, "https"

    const-string v3, "220.181.112.246"

    const/4 v4, -0x1

    const-string v5, "/callyi/login/check.action"

    const-string v6, "bduss="

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v17

    .line 111
    .local v17, uri:Ljava/net/URI;
    :goto_1
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 113
    .local v12, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Ljava/lang/String;

    const-string v2, "UTF-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v8, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 115
    .local v8, base64Encoded:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v13, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bduss"

    invoke-direct {v2, v3, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "deviceid"

    move-object/from16 v0, p4

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cver"

    const-string v4, "1.0.0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v11, v13, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 120
    .local v11, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v12, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    new-instance v14, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v14}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 123
    .local v14, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-virtual {v10, v12, v14}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 124
    .local v15, strResult:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 125
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 126
    const-string v2, "\""

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\""

    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const/4 v2, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    .line 129
    .end local v15           #strResult:Ljava/lang/String;
    .local v16, strResult:Ljava/lang/String;
    :goto_2
    new-instance v15, Ljava/lang/String;

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v15, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 131
    .end local v16           #strResult:Ljava/lang/String;
    .restart local v15       #strResult:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lbaidu/net/sip/extension/SipHttpUtilites;->parseSipProfile(Lbaidu/net/sip/extension/UserProfile;Ljava/lang/String;Ljava/lang/String;)Lbaidu/net/sip/SipProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v2

    .line 146
    :try_start_1
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v8           #base64Encoded:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v14           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .end local v15           #strResult:Ljava/lang/String;
    .end local v17           #uri:Ljava/net/URI;
    :cond_1
    :try_start_2
    const-string v2, "http"

    const-string v3, "220.181.112.246"

    const/4 v4, -0x1

    const-string v5, "/callyi/login/check.action"

    const-string v6, "bduss="

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v17

    .restart local v17       #uri:Ljava/net/URI;
    goto/16 :goto_1

    .line 133
    .restart local v8       #base64Encoded:Ljava/lang/String;
    .restart local v11       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .restart local v15       #strResult:Ljava/lang/String;
    :cond_2
    sget-object v2, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    const-string v3, "getSipProfileByBDUSS, reselt is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_a

    .line 146
    :try_start_3
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 148
    .end local v8           #base64Encoded:Ljava/lang/String;
    .end local v11           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v14           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .end local v15           #strResult:Ljava/lang/String;
    .end local v17           #uri:Ljava/net/URI;
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 146
    .restart local v8       #base64Encoded:Ljava/lang/String;
    .restart local v11       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .restart local v15       #strResult:Ljava/lang/String;
    .restart local v17       #uri:Ljava/net/URI;
    :catch_1
    move-exception v9

    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 135
    .end local v8           #base64Encoded:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v14           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .end local v15           #strResult:Ljava/lang/String;
    .end local v17           #uri:Ljava/net/URI;
    :catch_2
    move-exception v9

    .line 136
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :try_start_5
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 137
    .end local v9           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 138
    .local v9, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_6
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    :try_start_7
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v9           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 140
    .local v9, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 146
    :try_start_9
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_3

    :catch_7
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 141
    .end local v9           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v9

    .line 142
    .local v9, e:Ljava/net/URISyntaxException;
    :try_start_a
    invoke-virtual {v9}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 146
    :try_start_b
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_3

    :catch_9
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 143
    .end local v9           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v9

    .line 144
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 146
    :try_start_d
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_3

    :catch_b
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_e
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    :goto_4
    throw v2

    :catch_c
    move-exception v9

    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #base64Encoded:Ljava/lang/String;
    .restart local v11       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .restart local v15       #strResult:Ljava/lang/String;
    .restart local v17       #uri:Ljava/net/URI;
    :cond_3
    move-object/from16 v16, v15

    .end local v15           #strResult:Ljava/lang/String;
    .restart local v16       #strResult:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static getUserProfiles(Ljava/util/Map;ZLjava/lang/String;J)Ljava/util/Map;
    .locals 31
    .parameter
    .parameter "secure"
    .parameter "deviceId"
    .parameter "minGzipSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/QueryItem;",
            ">;Z",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    invoke-static {}, Lbaidu/net/sip/extension/SipHttpUtilites;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v13

    .line 153
    .local v13, httpClient:Landroid/net/http/AndroidHttpClient;
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v25, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/UserProfile;>;"
    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    const-string v3, "https"

    const-string v4, "220.181.112.246"

    const/4 v5, -0x1

    const-string v6, "/callyi/search.action"

    const-string/jumbo v7, "query="

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v30

    .line 162
    .local v30, uri:Ljava/net/URI;
    :goto_0
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 163
    .local v14, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    const/16 v24, 0x0

    .line 165
    .local v24, reqEntity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lbaidu/net/sip/extension/SipHttpUtilites;->getJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v17

    .line 167
    .local v17, jsonString:Ljava/lang/String;
    const-string v3, "Request"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lbaidu/net/sip/extension/SipHttpUtilites;->dumpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json string = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_a

    .line 170
    if-nez v17, :cond_1

    .line 241
    :try_start_1
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 244
    .end local v14           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v17           #jsonString:Ljava/lang/String;
    .end local v24           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v30           #uri:Ljava/net/URI;
    :goto_1
    return-object v25

    .line 159
    :cond_0
    :try_start_2
    const-string v3, "http"

    const-string v4, "220.181.112.246"

    const/4 v5, -0x1

    const-string v6, "/callyi/search.action"

    const-string/jumbo v7, "query="

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v30

    .restart local v30       #uri:Ljava/net/URI;
    goto :goto_0

    .line 172
    .restart local v14       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v17       #jsonString:Ljava/lang/String;
    .restart local v24       #reqEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    new-instance v10, Ljava/lang/String;

    const-string v3, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v10, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 174
    .local v10, base64Encoded:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_3

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deviceid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 176
    .local v22, query:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    .line 177
    .local v19, originalBytes:[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 178
    .local v20, originalSize:I
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    move/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 179
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    move/from16 v0, v20

    invoke-direct {v12, v9, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 180
    .local v12, gzipos:Ljava/util/zip/GZIPOutputStream;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v3, v1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 181
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 182
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 183
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 184
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v27

    .line 185
    .local v27, sendBytes:[B
    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v24, Lorg/apache/http/entity/ByteArrayEntity;

    .end local v24           #reqEntity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 193
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #gzipos:Ljava/util/zip/GZIPOutputStream;
    .end local v19           #originalBytes:[B
    .end local v20           #originalSize:I
    .end local v22           #query:Ljava/lang/String;
    .end local v27           #sendBytes:[B
    .restart local v24       #reqEntity:Lorg/apache/http/HttpEntity;
    :goto_2
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 195
    invoke-static {v14}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 197
    invoke-virtual {v13, v14}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 198
    .local v15, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_6

    .line 199
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v16

    .line 201
    .local v16, in:Ljava/io/InputStream;
    :try_start_3
    new-instance v23, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 202
    .local v23, reader:Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 203
    .local v18, line:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v26, sb:Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 205
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 216
    .end local v18           #line:Ljava/lang/String;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .end local v26           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 217
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    if-eqz v16, :cond_2

    .line 220
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_a

    .line 241
    .end local v11           #e:Ljava/lang/Exception;
    .end local v16           #in:Ljava/io/InputStream;
    :cond_2
    :goto_4
    :try_start_6
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 188
    .end local v15           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_7
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v21, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "query"

    invoke-direct {v3, v4, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "deviceid"

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v24, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v24           #reqEntity:Lorg/apache/http/HttpEntity;
    const-string v3, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a

    .restart local v24       #reqEntity:Lorg/apache/http/HttpEntity;
    goto/16 :goto_2

    .line 207
    .end local v21           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #in:Ljava/io/InputStream;
    .restart local v18       #line:Ljava/lang/String;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    .restart local v26       #sb:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_8
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 208
    .local v28, strResult:Ljava/lang/String;
    const-string v3, "\""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "\""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    const/4 v3, 0x1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v28

    .line 211
    .end local v28           #strResult:Ljava/lang/String;
    .local v29, strResult:Ljava/lang/String;
    :goto_5
    new-instance v28, Ljava/lang/String;

    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 213
    .end local v29           #strResult:Ljava/lang/String;
    .restart local v28       #strResult:Ljava/lang/String;
    const-string v3, "Respones"

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Lbaidu/net/sip/extension/SipHttpUtilites;->dumpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lbaidu/net/sip/extension/SipHttpUtilites;->parseUserProfiles(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 219
    if-eqz v16, :cond_2

    .line 220
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_4

    .line 230
    .end local v10           #base64Encoded:Ljava/lang/String;
    .end local v14           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #in:Ljava/io/InputStream;
    .end local v17           #jsonString:Ljava/lang/String;
    .end local v18           #line:Ljava/lang/String;
    .end local v23           #reader:Ljava/io/BufferedReader;
    .end local v24           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v26           #sb:Ljava/lang/StringBuilder;
    .end local v28           #strResult:Ljava/lang/String;
    .end local v30           #uri:Ljava/net/URI;
    :catch_2
    move-exception v11

    .line 231
    .local v11, e:Ljava/net/URISyntaxException;
    :try_start_a
    invoke-virtual {v11}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 241
    :try_start_b
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 219
    .end local v11           #e:Ljava/net/URISyntaxException;
    .restart local v10       #base64Encoded:Ljava/lang/String;
    .restart local v14       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #in:Ljava/io/InputStream;
    .restart local v17       #jsonString:Ljava/lang/String;
    .restart local v24       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v30       #uri:Ljava/net/URI;
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_5

    .line 220
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_a

    .line 232
    .end local v10           #base64Encoded:Ljava/lang/String;
    .end local v14           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #in:Ljava/io/InputStream;
    .end local v17           #jsonString:Ljava/lang/String;
    .end local v24           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v30           #uri:Ljava/net/URI;
    :catch_4
    move-exception v11

    .line 233
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    :try_start_d
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 241
    :try_start_e
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 224
    .end local v11           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v10       #base64Encoded:Ljava/lang/String;
    .restart local v14       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v17       #jsonString:Ljava/lang/String;
    .restart local v24       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v30       #uri:Ljava/net/URI;
    :cond_6
    :try_start_f
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-nez v3, :cond_7

    .line 225
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "response entity is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_7
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reposnse status code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reposnse reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_4

    .line 234
    .end local v10           #base64Encoded:Ljava/lang/String;
    .end local v14           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v17           #jsonString:Ljava/lang/String;
    .end local v24           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v30           #uri:Ljava/net/URI;
    :catch_6
    move-exception v11

    .line 235
    .local v11, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_10
    invoke-virtual {v11}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 241
    :try_start_11
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v3

    goto/16 :goto_1

    .line 236
    .end local v11           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_8
    move-exception v11

    .line 237
    .local v11, e:Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 241
    :try_start_13
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v3

    goto/16 :goto_1

    .line 238
    .end local v11           #e:Ljava/io/IOException;
    :catch_a
    move-exception v11

    .line 239
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_14
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 241
    :try_start_15
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_1

    :catch_b
    move-exception v3

    goto/16 :goto_1

    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v3

    :try_start_16
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    :goto_6
    throw v3

    .restart local v14       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v17       #jsonString:Ljava/lang/String;
    .restart local v24       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v30       #uri:Ljava/net/URI;
    :catch_c
    move-exception v3

    goto/16 :goto_1

    .end local v14           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v17           #jsonString:Ljava/lang/String;
    .end local v24           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v30           #uri:Ljava/net/URI;
    :catch_d
    move-exception v4

    goto :goto_6

    .restart local v10       #base64Encoded:Ljava/lang/String;
    .restart local v14       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #in:Ljava/io/InputStream;
    .restart local v17       #jsonString:Ljava/lang/String;
    .restart local v18       #line:Ljava/lang/String;
    .restart local v23       #reader:Ljava/io/BufferedReader;
    .restart local v24       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v26       #sb:Ljava/lang/StringBuilder;
    .restart local v28       #strResult:Ljava/lang/String;
    .restart local v30       #uri:Ljava/net/URI;
    :cond_8
    move-object/from16 v29, v28

    .end local v28           #strResult:Ljava/lang/String;
    .restart local v29       #strResult:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public static isSipAccountOnline(Ljava/lang/String;IZ)Z
    .locals 27
    .parameter "content"
    .parameter "type"
    .parameter "secure"

    .prologue
    .line 248
    const/16 v26, 0x1

    .line 249
    .local v26, uuid:I
    invoke-static {}, Lbaidu/net/sip/extension/SipHttpUtilites;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v10

    .line 250
    .local v10, httpClient:Landroid/net/http/AndroidHttpClient;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v21, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/UserProfile;>;"
    if-eqz p2, :cond_0

    .line 254
    :try_start_0
    const-string v2, "https"

    const-string v3, "220.181.112.246"

    const/4 v4, -0x1

    const-string v5, "/callyi/search.action"

    const-string/jumbo v6, "query="

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v25

    .line 259
    .local v25, uri:Ljava/net/URI;
    :goto_0
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 261
    .local v12, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c

    .line 262
    .local v15, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    packed-switch p1, :pswitch_data_0

    .line 276
    const/4 v2, 0x0

    .line 342
    :try_start_1
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 345
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :goto_1
    return v2

    .line 256
    :cond_0
    :try_start_2
    const-string v2, "http"

    const-string v3, "220.181.112.246"

    const/4 v4, -0x1

    const-string v5, "/callyi/search.action"

    const-string/jumbo v6, "query="

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v25

    .restart local v25       #uri:Ljava/net/URI;
    goto :goto_0

    .line 264
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    :pswitch_0
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lbaidu/net/sip/extension/QueryItem;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v4, v0, v1}, Lbaidu/net/sip/extension/QueryItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_2
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lbaidu/net/sip/extension/SipHttpUtilites;->getJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v16

    .line 280
    .local v16, jsonString:Ljava/lang/String;
    const-string v2, "Request"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lbaidu/net/sip/extension/SipHttpUtilites;->dumpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v2, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_c

    .line 283
    if-nez v16, :cond_1

    const/4 v2, 0x0

    .line 342
    :try_start_3
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 267
    .end local v9           #e:Ljava/lang/Exception;
    .end local v16           #jsonString:Ljava/lang/String;
    :pswitch_1
    :try_start_4
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lbaidu/net/sip/extension/QueryItem;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v4, v0, v1}, Lbaidu/net/sip/extension/QueryItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_2

    .line 331
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 332
    .local v9, e:Ljava/net/URISyntaxException;
    :try_start_5
    invoke-virtual {v9}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 342
    :try_start_6
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 345
    .end local v9           #e:Ljava/net/URISyntaxException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 270
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .restart local v25       #uri:Ljava/net/URI;
    :pswitch_2
    :try_start_7
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lbaidu/net/sip/extension/QueryItem;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v4, v0, v1}, Lbaidu/net/sip/extension/QueryItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_2

    .line 333
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catch_2
    move-exception v9

    .line 334
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    :try_start_8
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 342
    :try_start_9
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 273
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .restart local v25       #uri:Ljava/net/URI;
    :pswitch_3
    :try_start_a
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lbaidu/net/sip/extension/QueryItem;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v3, v4, v0, v1}, Lbaidu/net/sip/extension/QueryItem;-><init>(ILjava/lang/String;I)V

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_2

    .line 335
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catch_4
    move-exception v9

    .line 336
    .local v9, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_b
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 342
    :try_start_c
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    :catch_5
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .restart local v25       #uri:Ljava/net/URI;
    :catch_6
    move-exception v9

    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 285
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v16       #jsonString:Ljava/lang/String;
    :cond_1
    :try_start_d
    new-instance v8, Ljava/lang/String;

    const-string v2, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v8, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 287
    .local v8, base64Encoded:Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v18, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "query"

    invoke-direct {v2, v3, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 290
    .local v11, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v12, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 292
    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 294
    invoke-virtual {v10, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 295
    .local v13, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    .line 296
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_c

    move-result-object v14

    .line 298
    .local v14, in:Ljava/io/InputStream;
    :try_start_e
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v14, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    .local v20, reader:Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 300
    .local v17, line:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v22, sb:Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 302
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_4

    .line 317
    .end local v17           #line:Ljava/lang/String;
    .end local v20           #reader:Ljava/io/BufferedReader;
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :catch_7
    move-exception v9

    .line 318
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 320
    if-eqz v14, :cond_2

    .line 321
    :try_start_10
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_c

    .line 342
    .end local v9           #e:Ljava/lang/Exception;
    .end local v14           #in:Ljava/io/InputStream;
    :cond_2
    :goto_5
    :try_start_11
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v9

    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 304
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v14       #in:Ljava/io/InputStream;
    .restart local v17       #line:Ljava/lang/String;
    .restart local v20       #reader:Ljava/io/BufferedReader;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_12
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 305
    .local v23, strResult:Ljava/lang/String;
    const-string v2, "\""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "\""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 306
    const/4 v2, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 308
    .end local v23           #strResult:Ljava/lang/String;
    .local v24, strResult:Ljava/lang/String;
    :goto_6
    new-instance v23, Ljava/lang/String;

    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 310
    .end local v24           #strResult:Ljava/lang/String;
    .restart local v23       #strResult:Ljava/lang/String;
    const-string v2, "Respones"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lbaidu/net/sip/extension/SipHttpUtilites;->dumpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Lbaidu/net/sip/extension/SipHttpUtilites;->parseUserProfiles(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 313
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lbaidu/net/sip/extension/UserProfile;

    .line 314
    .local v19, profile:Lbaidu/net/sip/extension/UserProfile;
    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget v2, v0, Lbaidu/net/sip/extension/UserProfile;->mUstatus:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    if-nez v2, :cond_5

    .line 315
    const/4 v2, 0x1

    .line 320
    if-eqz v14, :cond_4

    .line 321
    :try_start_13
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_c

    .line 342
    :cond_4
    :try_start_14
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v9

    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 320
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v14, :cond_2

    .line 321
    :try_start_15
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_c

    goto :goto_5

    .line 337
    .end local v8           #base64Encoded:Ljava/lang/String;
    .end local v11           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #in:Ljava/io/InputStream;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v17           #line:Ljava/lang/String;
    .end local v18           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v19           #profile:Lbaidu/net/sip/extension/UserProfile;
    .end local v20           #reader:Ljava/io/BufferedReader;
    .end local v22           #sb:Ljava/lang/StringBuilder;
    .end local v23           #strResult:Ljava/lang/String;
    .end local v25           #uri:Ljava/net/URI;
    :catch_a
    move-exception v9

    .line 338
    .local v9, e:Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 342
    :try_start_17
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_3

    :catch_b
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 320
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #base64Encoded:Ljava/lang/String;
    .restart local v11       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #in:Ljava/io/InputStream;
    .restart local v15       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .restart local v16       #jsonString:Ljava/lang/String;
    .restart local v18       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v25       #uri:Ljava/net/URI;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_6

    .line 321
    :try_start_18
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_c

    .line 339
    .end local v8           #base64Encoded:Ljava/lang/String;
    .end local v11           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #in:Ljava/io/InputStream;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v18           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catch_c
    move-exception v9

    .line 340
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_19
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 342
    :try_start_1a
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    goto/16 :goto_3

    :catch_d
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 325
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #base64Encoded:Ljava/lang/String;
    .restart local v11       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v15       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .restart local v16       #jsonString:Ljava/lang/String;
    .restart local v18       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v25       #uri:Ljava/net/URI;
    :cond_7
    :try_start_1b
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_8

    .line 326
    sget-object v2, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "response entity is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_8
    sget-object v2, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reposnse status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v2, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reposnse reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_5

    .line 342
    .end local v8           #base64Encoded:Ljava/lang/String;
    .end local v11           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v18           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catchall_1
    move-exception v2

    :try_start_1c
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    :goto_7
    throw v2

    .local v9, e:Ljava/net/URISyntaxException;
    :catch_e
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .end local v9           #e:Ljava/lang/Exception;
    :catch_f
    move-exception v9

    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #base64Encoded:Ljava/lang/String;
    .restart local v11       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v12       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #in:Ljava/io/InputStream;
    .restart local v15       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .restart local v16       #jsonString:Ljava/lang/String;
    .restart local v17       #line:Ljava/lang/String;
    .restart local v18       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v20       #reader:Ljava/io/BufferedReader;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    .restart local v23       #strResult:Ljava/lang/String;
    .restart local v25       #uri:Ljava/net/URI;
    :cond_9
    move-object/from16 v24, v23

    .end local v23           #strResult:Ljava/lang/String;
    .restart local v24       #strResult:Ljava/lang/String;
    goto/16 :goto_6

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parseSipProfile(Lbaidu/net/sip/extension/UserProfile;Ljava/lang/String;Ljava/lang/String;)Lbaidu/net/sip/SipProfile;
    .locals 16
    .parameter "user"
    .parameter "strResponse"
    .parameter "baiduName"

    .prologue
    .line 349
    const/4 v7, 0x0

    .line 350
    .local v7, result:Lbaidu/net/sip/SipProfile;
    const/4 v5, 0x0

    .line 352
    .local v5, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 353
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .local v6, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v13, "status"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 354
    .local v12, status:I
    packed-switch v12, :pswitch_data_0

    :goto_0
    move-object v5, v6

    .line 416
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v12           #status:I
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v7

    .line 356
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v12       #status:I
    :pswitch_0
    const-string v13, "info"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v5

    .line 357
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v13, "sipID"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, sipID:Ljava/lang/String;
    const-string/jumbo v13, "sipPasswd"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 359
    .local v11, sipPasswd:Ljava/lang/String;
    const-string/jumbo v13, "sbcIP"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, sbcIP:Ljava/lang/String;
    const-string/jumbo v13, "sbcPort"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 362
    .local v9, sbcPort:Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 363
    const-string/jumbo v13, "sipid"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 364
    const-string/jumbo v13, "sipid"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    .line 366
    :cond_1
    const-string/jumbo v13, "uname"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 367
    const-string/jumbo v13, "uname"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mUname:Ljava/lang/String;

    .line 369
    :cond_2
    const-string v13, "email"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 370
    const-string v13, "email"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mEmail:Ljava/lang/String;

    .line 372
    :cond_3
    const-string/jumbo v13, "phone"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 373
    const-string/jumbo v13, "phone"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mPhone:Ljava/lang/String;

    .line 377
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 379
    new-instance v13, Lbaidu/net/sip/SipProfile$Builder;

    invoke-direct {v13, v10, v8}, Lbaidu/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Lbaidu/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    const-string v14, "UDP"

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setPort(I)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lbaidu/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SipProfile$Builder;->setBaiduAccountId(Ljava/lang/String;)Lbaidu/net/sip/SipProfile$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lbaidu/net/sip/SipProfile$Builder;->build()Lbaidu/net/sip/SipProfile;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v7

    goto/16 :goto_1

    .line 395
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #sbcIP:Ljava/lang/String;
    .end local v9           #sbcPort:Ljava/lang/String;
    .end local v10           #sipID:Ljava/lang/String;
    .end local v11           #sipPasswd:Ljava/lang/String;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :pswitch_1
    :try_start_3
    const-string v13, "err"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 396
    .local v2, err:Lorg/json/JSONObject;
    const-string v13, "errNum"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 397
    .local v4, errNum:I
    const-string v13, "errInfo"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, errInfo:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lbaidu/net/sip/extension/UserProfile;->setErrorInfo(ILjava/lang/String;)V

    .line 401
    :cond_5
    sget-object v13, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ParseRegister error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 404
    .end local v2           #err:Lorg/json/JSONObject;
    .end local v3           #errInfo:Ljava/lang/String;
    .end local v4           #errNum:I
    .end local v12           #status:I
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 405
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .local v1, e:Lorg/json/JSONException;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 406
    .end local v1           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 407
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 408
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 410
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 411
    .local v1, e:Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 412
    .end local v1           #e:Ljava/text/ParseException;
    :catch_4
    move-exception v1

    .line 413
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 412
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_6

    .line 410
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_5

    .line 408
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_4

    .line 406
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_3

    .line 404
    :catch_9
    move-exception v1

    goto :goto_2

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseUserProfiles(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 21
    .parameter
    .parameter "strResponse"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/UserProfile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/QueryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/UserProfile;>;"
    .local p2, queryItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    const/16 v16, 0x0

    .line 422
    .local v16, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 423
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .local v17, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "info"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 424
    .local v10, array:Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v18

    .line 425
    .local v18, length:I
    const/4 v15, 0x0

    .local v15, i:I
    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 426
    :try_start_2
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 427
    const-string/jumbo v2, "status"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 429
    .local v19, status:I
    packed-switch v19, :pswitch_data_0

    .line 425
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 431
    :pswitch_0
    const-string/jumbo v2, "uuid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 432
    .local v3, uuid:I
    const-string v2, "info"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 433
    const-string/jumbo v2, "ustatus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 434
    .local v4, ustates:I
    const/4 v5, 0x0

    .line 435
    .local v5, sipid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 436
    .local v6, uname:Ljava/lang/String;
    const/4 v7, 0x0

    .line 437
    .local v7, uemail:Ljava/lang/String;
    const/4 v8, 0x0

    .line 439
    .local v8, uphone:Ljava/lang/String;
    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    .line 440
    const-string/jumbo v2, "sipid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    const-string/jumbo v2, "sipid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 443
    :cond_0
    const-string/jumbo v2, "uname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    const-string/jumbo v2, "uname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 446
    :cond_1
    const-string v2, "email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    const-string v2, "email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 449
    :cond_2
    const-string/jumbo v2, "phone"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    const-string/jumbo v2, "phone"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 453
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    new-instance v2, Lbaidu/net/sip/extension/UserProfile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbaidu/net/sip/extension/QueryItem;

    invoke-direct/range {v2 .. v9}, Lbaidu/net/sip/extension/UserProfile;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbaidu/net/sip/extension/QueryItem;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 465
    .end local v3           #uuid:I
    .end local v4           #ustates:I
    .end local v5           #sipid:Ljava/lang/String;
    .end local v6           #uname:Ljava/lang/String;
    .end local v7           #uemail:Ljava/lang/String;
    .end local v8           #uphone:Ljava/lang/String;
    .end local v10           #array:Lorg/json/JSONArray;
    .end local v15           #i:I
    .end local v18           #length:I
    .end local v19           #status:I
    :catch_0
    move-exception v11

    .line 466
    .local v11, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 474
    .end local v11           #e:Lorg/json/JSONException;
    :cond_4
    :goto_3
    return-void

    .line 456
    .restart local v10       #array:Lorg/json/JSONArray;
    .restart local v15       #i:I
    .restart local v18       #length:I
    .restart local v19       #status:I
    :pswitch_1
    :try_start_3
    const-string/jumbo v2, "uuid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 457
    .restart local v3       #uuid:I
    const-string v2, "err"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 458
    .local v12, err:Lorg/json/JSONObject;
    const-string v2, "errNum"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 459
    .local v14, errNum:I
    const-string v2, "errInfo"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 460
    .local v13, errInfo:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v20, Lbaidu/net/sip/extension/UserProfile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbaidu/net/sip/extension/QueryItem;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v13, v2}, Lbaidu/net/sip/extension/UserProfile;-><init>(ILjava/lang/String;Lbaidu/net/sip/extension/QueryItem;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v2, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ParseRegister error: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 467
    .end local v3           #uuid:I
    .end local v10           #array:Lorg/json/JSONArray;
    .end local v12           #err:Lorg/json/JSONObject;
    .end local v13           #errInfo:Ljava/lang/String;
    .end local v14           #errNum:I
    .end local v15           #i:I
    .end local v18           #length:I
    .end local v19           #status:I
    :catch_1
    move-exception v11

    .line 468
    .local v11, e:Ljava/lang/NumberFormatException;
    :goto_4
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 469
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v11

    .line 470
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :goto_5
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 471
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v11

    .line 472
    .local v11, e:Ljava/lang/NullPointerException;
    :goto_6
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 471
    .end local v11           #e:Ljava/lang/NullPointerException;
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_4
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_6

    .line 469
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_5
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_5

    .line 467
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_6
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_4

    .line 465
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_7
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_2

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
