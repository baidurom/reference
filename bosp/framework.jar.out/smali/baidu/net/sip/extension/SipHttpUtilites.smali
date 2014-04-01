.class public Lbaidu/net/sip/extension/SipHttpUtilites;
.super Ljava/lang/Object;
.source "SipHttpUtilites.java"


# static fields
.field private static final HTTP_PARAMNAME_BDUSS:Ljava/lang/String; = "bduss"

.field private static final HTTP_PARAMNAME_QUERY:Ljava/lang/String; = "query"

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

.field private static final PROV_SERVER_LOGIN_PATCH:Ljava/lang/String; = "/callyi/login/check.action"

.field private static final PROV_SERVER_LOGIN_QUERY:Ljava/lang/String; = "bduss="

.field private static final PROV_SERVER_SEARCH_PATCH:Ljava/lang/String; = "/callyi/search.action"

.field private static final PROV_SERVER_SEARCH_QUERY:Ljava/lang/String; = "query="

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lbaidu/net/sip/extension/SipHttpUtilites;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 431
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<Lbaidu/net/sip/extension/QueryItem;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 432
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

    .line 433
    .local v3, item:Lbaidu/net/sip/extension/QueryItem;
    iget-object v5, v3, Lbaidu/net/sip/extension/QueryItem;->qs:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 434
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 436
    .local v4, object:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "qt"

    iget v6, v3, Lbaidu/net/sip/extension/QueryItem;->qt:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 437
    const-string/jumbo v5, "qs"

    iget-object v6, v3, Lbaidu/net/sip/extension/QueryItem;->qs:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string/jumbo v5, "uuid"

    iget v6, v3, Lbaidu/net/sip/extension/QueryItem;->uuid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 439
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #item:Lbaidu/net/sip/extension/QueryItem;
    .end local v4           #object:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 445
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 447
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getNewHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 9

    .prologue
    .line 452
    const-string v5, "SipHttpClient"

    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 454
    .local v1, httpClient:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 455
    .local v4, trustStore:Ljava/security/KeyStore;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 457
    new-instance v3, Lbaidu/net/sip/extension/SipSSLSocketFactory;

    invoke-direct {v3, v4}, Lbaidu/net/sip/extension/SipSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 458
    .local v3, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 460
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 461
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 462
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v2           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v4           #trustStore:Ljava/security/KeyStore;
    :goto_0
    return-object v1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getSipProfileByBDUSS(Lbaidu/net/sip/extension/UserProfile;Ljava/lang/String;Ljava/lang/String;Z)Lbaidu/net/sip/SipProfile;
    .locals 18
    .parameter "user"
    .parameter "bduss"
    .parameter "baiduName"
    .parameter "secure"

    .prologue
    .line 87
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 131
    :goto_0
    return-object v2

    .line 88
    :cond_0
    invoke-static {}, Lbaidu/net/sip/extension/SipHttpUtilites;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v10

    .line 91
    .local v10, httpClient:Landroid/net/http/AndroidHttpClient;
    if-eqz p3, :cond_1

    .line 92
    :try_start_0
    const-string v2, "https"

    const-string v3, "220.181.112.246"

    const/4 v4, -0x1

    const-string v5, "/callyi/login/check.action"

    const-string v6, "bduss="

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v17

    .line 96
    .local v17, uri:Ljava/net/URI;
    :goto_1
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 98
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

    .line 100
    .local v8, base64Encoded:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v13, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bduss"

    invoke-direct {v2, v3, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v11, v13, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 103
    .local v11, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v12, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 105
    new-instance v14, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v14}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 106
    .local v14, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-virtual {v10, v12, v14}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 107
    .local v15, strResult:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 108
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 109
    const-string v2, "\""

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\""

    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    .line 112
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

    .line 114
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

    .line 129
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

    .line 94
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

    .line 116
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

    .line 129
    :try_start_3
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 131
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

    .line 129
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

    .line 118
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

    .line 119
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
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

    .line 120
    .end local v9           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 121
    .local v9, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_6
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
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

    .line 122
    .end local v9           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 123
    .local v9, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 129
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

    .line 124
    .end local v9           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v9

    .line 125
    .local v9, e:Ljava/net/URISyntaxException;
    :try_start_a
    invoke-virtual {v9}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 129
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

    .line 126
    .end local v9           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v9

    .line 127
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 129
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

.method public static getUserProfiles(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 25
    .parameter
    .parameter "secure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/QueryItem;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbaidu/net/sip/extension/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    invoke-static {}, Lbaidu/net/sip/extension/SipHttpUtilites;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v11

    .line 136
    .local v11, httpClient:Landroid/net/http/AndroidHttpClient;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v20, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/UserProfile;>;"
    if-eqz p1, :cond_0

    .line 140
    :try_start_0
    const-string v3, "https"

    const-string v4, "220.181.112.246"

    const/4 v5, -0x1

    const-string v6, "/callyi/search.action"

    const-string/jumbo v7, "query="

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v24

    .line 145
    .local v24, uri:Ljava/net/URI;
    :goto_0
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 147
    .local v13, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lbaidu/net/sip/extension/SipHttpUtilites;->getJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, jsonString:Ljava/lang/String;
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json string = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

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

    .line 149
    if-nez v16, :cond_1

    .line 201
    :try_start_1
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 204
    .end local v13           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v24           #uri:Ljava/net/URI;
    :goto_1
    return-object v20

    .line 142
    :cond_0
    :try_start_2
    const-string v3, "http"

    const-string v4, "220.181.112.246"

    const/4 v5, -0x1

    const-string v6, "/callyi/search.action"

    const-string/jumbo v7, "query="

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v24

    .restart local v24       #uri:Ljava/net/URI;
    goto :goto_0

    .line 151
    .restart local v13       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v16       #jsonString:Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/String;

    const-string v3, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v9, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 153
    .local v9, base64Encoded:Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v18, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "query"

    invoke-direct {v3, v4, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v12, v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 156
    .local v12, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v13, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 158
    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 160
    invoke-virtual {v11, v13}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 161
    .local v14, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 162
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v15

    .line 164
    .local v15, in:Ljava/io/InputStream;
    :try_start_3
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v15, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v19, reader:Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 166
    .local v17, line:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v21, sb:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 168
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 176
    .end local v17           #line:Ljava/lang/String;
    .end local v19           #reader:Ljava/io/BufferedReader;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 177
    .local v10, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    if-eqz v15, :cond_2

    .line 180
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_a

    .line 201
    .end local v10           #e:Ljava/lang/Exception;
    .end local v15           #in:Ljava/io/InputStream;
    :cond_2
    :goto_3
    :try_start_6
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 170
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v17       #line:Ljava/lang/String;
    .restart local v19       #reader:Ljava/io/BufferedReader;
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 171
    .local v22, strResult:Ljava/lang/String;
    const-string v3, "\""

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "\""

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 172
    const/4 v3, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 174
    .end local v22           #strResult:Ljava/lang/String;
    .local v23, strResult:Ljava/lang/String;
    :goto_4
    new-instance v22, Ljava/lang/String;

    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 175
    .end local v23           #strResult:Ljava/lang/String;
    .restart local v22       #strResult:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lbaidu/net/sip/extension/SipHttpUtilites;->parseUserProfiles(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 179
    if-eqz v15, :cond_2

    .line 180
    :try_start_8
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_3

    .line 190
    .end local v9           #base64Encoded:Ljava/lang/String;
    .end local v12           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v13           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #in:Ljava/io/InputStream;
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v17           #line:Ljava/lang/String;
    .end local v18           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v19           #reader:Ljava/io/BufferedReader;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    .end local v22           #strResult:Ljava/lang/String;
    .end local v24           #uri:Ljava/net/URI;
    :catch_2
    move-exception v10

    .line 191
    .local v10, e:Ljava/net/URISyntaxException;
    :try_start_9
    invoke-virtual {v10}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 201
    :try_start_a
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 179
    .end local v10           #e:Ljava/net/URISyntaxException;
    .restart local v9       #base64Encoded:Ljava/lang/String;
    .restart local v12       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v13       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v14       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v16       #jsonString:Ljava/lang/String;
    .restart local v18       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v24       #uri:Ljava/net/URI;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_4

    .line 180
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_a

    .line 192
    .end local v9           #base64Encoded:Ljava/lang/String;
    .end local v12           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v13           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #in:Ljava/io/InputStream;
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v18           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v24           #uri:Ljava/net/URI;
    :catch_4
    move-exception v10

    .line 193
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    :try_start_c
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 201
    :try_start_d
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 184
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v9       #base64Encoded:Ljava/lang/String;
    .restart local v12       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v13       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v14       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #jsonString:Ljava/lang/String;
    .restart local v18       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v24       #uri:Ljava/net/URI;
    :cond_5
    :try_start_e
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-nez v3, :cond_6

    .line 185
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "response entity is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_6
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reposnse status code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v3, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reposnse reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_3

    .line 194
    .end local v9           #base64Encoded:Ljava/lang/String;
    .end local v12           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v13           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v18           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v24           #uri:Ljava/net/URI;
    :catch_6
    move-exception v10

    .line 195
    .local v10, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_f
    invoke-virtual {v10}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 201
    :try_start_10
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v3

    goto/16 :goto_1

    .line 196
    .end local v10           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_8
    move-exception v10

    .line 197
    .local v10, e:Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 201
    :try_start_12
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v3

    goto/16 :goto_1

    .line 198
    .end local v10           #e:Ljava/io/IOException;
    :catch_a
    move-exception v10

    .line 199
    .local v10, e:Ljava/lang/IllegalArgumentException;
    :try_start_13
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 201
    :try_start_14
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_1

    :catch_b
    move-exception v3

    goto/16 :goto_1

    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v3

    :try_start_15
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    :goto_5
    throw v3

    .restart local v13       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v16       #jsonString:Ljava/lang/String;
    .restart local v24       #uri:Ljava/net/URI;
    :catch_c
    move-exception v3

    goto/16 :goto_1

    .end local v13           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #jsonString:Ljava/lang/String;
    .end local v24           #uri:Ljava/net/URI;
    :catch_d
    move-exception v4

    goto :goto_5

    .restart local v9       #base64Encoded:Ljava/lang/String;
    .restart local v12       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v13       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v14       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v16       #jsonString:Ljava/lang/String;
    .restart local v17       #line:Ljava/lang/String;
    .restart local v18       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v19       #reader:Ljava/io/BufferedReader;
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    .restart local v22       #strResult:Ljava/lang/String;
    .restart local v24       #uri:Ljava/net/URI;
    :cond_7
    move-object/from16 v23, v22

    .end local v22           #strResult:Ljava/lang/String;
    .restart local v23       #strResult:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public static isSipAccountOnline(Ljava/lang/String;IZ)Z
    .locals 27
    .parameter "content"
    .parameter "type"
    .parameter "secure"

    .prologue
    .line 208
    const/16 v26, 0x1

    .line 209
    .local v26, uuid:I
    invoke-static {}, Lbaidu/net/sip/extension/SipHttpUtilites;->getNewHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v10

    .line 210
    .local v10, httpClient:Landroid/net/http/AndroidHttpClient;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v21, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/UserProfile;>;"
    if-eqz p2, :cond_0

    .line 214
    :try_start_0
    const-string v2, "https"

    const-string v3, "220.181.112.246"

    const/4 v4, -0x1

    const-string v5, "/callyi/search.action"

    const-string/jumbo v6, "query="

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v25

    .line 219
    .local v25, uri:Ljava/net/URI;
    :goto_0
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 221
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

    .line 222
    .local v15, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    packed-switch p1, :pswitch_data_0

    .line 236
    const/4 v2, 0x0

    .line 296
    :try_start_1
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 299
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :goto_1
    return v2

    .line 216
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

    .line 224
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

    .line 238
    :goto_2
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lbaidu/net/sip/extension/SipHttpUtilites;->getJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, jsonString:Ljava/lang/String;
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

    .line 240
    if-nez v16, :cond_1

    const/4 v2, 0x0

    .line 296
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

    .line 227
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

    .line 285
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 286
    .local v9, e:Ljava/net/URISyntaxException;
    :try_start_5
    invoke-virtual {v9}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 296
    :try_start_6
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 299
    .end local v9           #e:Ljava/net/URISyntaxException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 230
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

    .line 287
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catch_2
    move-exception v9

    .line 288
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    :try_start_8
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 296
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

    .line 233
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

    .line 289
    .end local v12           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    .end local v25           #uri:Ljava/net/URI;
    :catch_4
    move-exception v9

    .line 290
    .local v9, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_b
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 296
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

    .line 242
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

    .line 244
    .local v8, base64Encoded:Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v18, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "query"

    invoke-direct {v2, v3, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 247
    .local v11, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v12, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 249
    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 251
    invoke-virtual {v10, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 252
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

    .line 253
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

    .line 255
    .local v14, in:Ljava/io/InputStream;
    :try_start_e
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v14, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 256
    .local v20, reader:Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 257
    .local v17, line:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v22, sb:Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 259
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_4

    .line 271
    .end local v17           #line:Ljava/lang/String;
    .end local v20           #reader:Ljava/io/BufferedReader;
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :catch_7
    move-exception v9

    .line 272
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 274
    if-eqz v14, :cond_2

    .line 275
    :try_start_10
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_c

    .line 296
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

    .line 261
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

    .line 262
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

    .line 263
    const/4 v2, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 265
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

    .line 266
    .end local v24           #strResult:Ljava/lang/String;
    .restart local v23       #strResult:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Lbaidu/net/sip/extension/SipHttpUtilites;->parseUserProfiles(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lbaidu/net/sip/extension/UserProfile;

    .line 268
    .local v19, profile:Lbaidu/net/sip/extension/UserProfile;
    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget v2, v0, Lbaidu/net/sip/extension/UserProfile;->mUstatus:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    if-nez v2, :cond_5

    .line 269
    const/4 v2, 0x1

    .line 274
    if-eqz v14, :cond_4

    .line 275
    :try_start_13
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_c

    .line 296
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

    .line 274
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v14, :cond_2

    .line 275
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

    .line 291
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

    .line 292
    .local v9, e:Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 296
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

    .line 274
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

    .line 275
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

    .line 293
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

    .line 294
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_19
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 296
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

    .line 279
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

    .line 280
    sget-object v2, Lbaidu/net/sip/extension/SipHttpUtilites;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "response entity is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
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

    .line 283
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

    .line 296
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

    .line 222
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
    .line 303
    const/4 v7, 0x0

    .line 304
    .local v7, result:Lbaidu/net/sip/SipProfile;
    const/4 v5, 0x0

    .line 306
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

    .line 307
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .local v6, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v13, "status"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 308
    .local v12, status:I
    packed-switch v12, :pswitch_data_0

    :goto_0
    move-object v5, v6

    .line 370
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v12           #status:I
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v7

    .line 310
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

    .line 311
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v13, "sipID"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 312
    .local v10, sipID:Ljava/lang/String;
    const-string/jumbo v13, "sipPasswd"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, sipPasswd:Ljava/lang/String;
    const-string/jumbo v13, "sbcIP"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, sbcIP:Ljava/lang/String;
    const-string/jumbo v13, "sbcPort"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 316
    .local v9, sbcPort:Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 317
    const-string/jumbo v13, "sipid"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 318
    const-string/jumbo v13, "sipid"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    .line 320
    :cond_1
    const-string/jumbo v13, "uname"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 321
    const-string/jumbo v13, "uname"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mUname:Ljava/lang/String;

    .line 323
    :cond_2
    const-string v13, "email"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 324
    const-string v13, "email"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mEmail:Ljava/lang/String;

    .line 326
    :cond_3
    const-string/jumbo v13, "phone"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 327
    const-string/jumbo v13, "phone"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lbaidu/net/sip/extension/UserProfile;->mPhone:Ljava/lang/String;

    .line 331
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

    .line 333
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

    .line 349
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

    .line 350
    .local v2, err:Lorg/json/JSONObject;
    const-string v13, "errNum"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 351
    .local v4, errNum:I
    const-string v13, "errInfo"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, errInfo:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 353
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lbaidu/net/sip/extension/UserProfile;->setErrorInfo(ILjava/lang/String;)V

    .line 355
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

    .line 358
    .end local v2           #err:Lorg/json/JSONObject;
    .end local v3           #errInfo:Ljava/lang/String;
    .end local v4           #errNum:I
    .end local v12           #status:I
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 359
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .local v1, e:Lorg/json/JSONException;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 360
    .end local v1           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 361
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 362
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 363
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 364
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 365
    .local v1, e:Ljava/text/ParseException;
    :goto_5
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 366
    .end local v1           #e:Ljava/text/ParseException;
    :catch_4
    move-exception v1

    .line 367
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 366
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_6

    .line 364
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_5

    .line 362
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_4

    .line 360
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_3

    .line 358
    :catch_9
    move-exception v1

    goto :goto_2

    .line 308
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
    .line 374
    .local p0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/UserProfile;>;"
    .local p2, queryItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbaidu/net/sip/extension/QueryItem;>;"
    const/16 v16, 0x0

    .line 376
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

    .line 377
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .local v17, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "info"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 378
    .local v10, array:Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v18

    .line 379
    .local v18, length:I
    const/4 v15, 0x0

    .local v15, i:I
    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 380
    :try_start_2
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 381
    const-string/jumbo v2, "status"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 383
    .local v19, status:I
    packed-switch v19, :pswitch_data_0

    .line 379
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 385
    :pswitch_0
    const-string/jumbo v2, "uuid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 386
    .local v3, uuid:I
    const-string v2, "info"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 387
    const-string/jumbo v2, "ustatus"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 388
    .local v4, ustates:I
    const/4 v5, 0x0

    .line 389
    .local v5, sipid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 390
    .local v6, uname:Ljava/lang/String;
    const/4 v7, 0x0

    .line 391
    .local v7, uemail:Ljava/lang/String;
    const/4 v8, 0x0

    .line 393
    .local v8, uphone:Ljava/lang/String;
    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    .line 394
    const-string/jumbo v2, "sipid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const-string/jumbo v2, "sipid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    :cond_0
    const-string/jumbo v2, "uname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    const-string/jumbo v2, "uname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 400
    :cond_1
    const-string v2, "email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    const-string v2, "email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 403
    :cond_2
    const-string/jumbo v2, "phone"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 404
    const-string/jumbo v2, "phone"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 407
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

    .line 419
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

    .line 420
    .local v11, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 428
    .end local v11           #e:Lorg/json/JSONException;
    :cond_4
    :goto_3
    return-void

    .line 410
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

    .line 411
    .restart local v3       #uuid:I
    const-string v2, "err"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 412
    .local v12, err:Lorg/json/JSONObject;
    const-string v2, "errNum"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 413
    .local v14, errNum:I
    const-string v2, "errInfo"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 414
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

    .line 415
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

    .line 421
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

    .line 422
    .local v11, e:Ljava/lang/NumberFormatException;
    :goto_4
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 423
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v11

    .line 424
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :goto_5
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 425
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v11

    .line 426
    .local v11, e:Ljava/lang/NullPointerException;
    :goto_6
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 425
    .end local v11           #e:Ljava/lang/NullPointerException;
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_4
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_6

    .line 423
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_5
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_5

    .line 421
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_6
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_4

    .line 419
    .end local v16           #jsonObject:Lorg/json/JSONObject;
    .restart local v17       #jsonObject:Lorg/json/JSONObject;
    :catch_7
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #jsonObject:Lorg/json/JSONObject;
    .restart local v16       #jsonObject:Lorg/json/JSONObject;
    goto :goto_2

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
