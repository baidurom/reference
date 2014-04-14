.class final Lcom/baidu/internal/keyguard/hotword/UbcSprite$1;
.super Ljava/lang/Thread;
.source "UbcSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/hotword/UbcSprite;->upload(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/UbcSprite$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 57
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 58
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 60
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 61
    .local v3, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->access$000()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    const-string v9, "Content-Type"

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v9, "Accept-Encoding"

    const-string v10, "gzip"

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v9, p0, Lcom/baidu/internal/keyguard/hotword/UbcSprite$1;->val$context:Landroid/content/Context;

    #calls: Lcom/baidu/internal/keyguard/hotword/UbcSprite;->getPostData(Landroid/content/Context;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-static {v9}, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->access$100(Landroid/content/Context;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v0

    .line 68
    .local v0, byteentity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 69
    const-string v9, "UbcSprite"

    const-string v10, "uploading statistics..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const v9, 0xf00a

    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 71
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 72
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 73
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 74
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 75
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getGzipInputStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v5

    .line 76
    .local v5, inputStream:Ljava/io/InputStream;
    if-nez v5, :cond_0

    .line 77
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 79
    :cond_0
    #calls: Lcom/baidu/internal/keyguard/hotword/UbcSprite;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->access$200(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, returnConnection:Ljava/lang/String;
    const-string v9, "UbcSprite"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ret"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v7, ret:Lorg/json/JSONObject;
    const-string v9, "code"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    const-string v9, "UbcSprite"

    const-string v10, "upload ubc success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 95
    .end local v0           #byteentity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #ret:Lorg/json/JSONObject;
    .end local v8           #returnConnection:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "UbcSprite"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error during statistics uploading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, e:Ljava/io/IOException;
    const-string v9, "UbcSprite"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error during statistics uploading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, e:Lorg/json/JSONException;
    const-string v9, "UbcSprite"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error during statistics uploading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v1           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "UbcSprite"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error during statistics uploading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
