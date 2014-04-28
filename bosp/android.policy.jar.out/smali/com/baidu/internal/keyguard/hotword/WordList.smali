.class public Lcom/baidu/internal/keyguard/hotword/WordList;
.super Ljava/lang/Object;
.source "WordList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    }
.end annotation


# static fields
.field public static final HOTWORD_TYPE:I = 0x1

.field private static final HTTP_CONN_TIMEOUT:I = 0x7530

.field private static final HTTP_METHOD:Ljava/lang/String; = "POST"

.field private static final HTTP_TIMEOUT:I = 0x7530

.field private static final JSON_NAME_AMOUNT:Ljava/lang/String; = "amount"

.field private static final JSON_NAME_CATEGORY:Ljava/lang/String; = "category"

.field private static final JSON_NAME_HOTWORD_ARRAY:Ljava/lang/String; = "hotword"

.field private static final JSON_NAME_NEWS_ARRAY:Ljava/lang/String; = "news"

.field private static final JSON_NAME_NEWS_TYPE:Ljava/lang/String; = "type"

.field private static final JSON_NAME_RESULT_ARRAY:Ljava/lang/String; = "result"

.field private static final JSON_NAME_RESULT_CODE:Ljava/lang/String; = "code"

.field private static final JSON_NAME_TITLE:Ljava/lang/String; = "title"

.field private static final JSON_NAME_URL:Ljava/lang/String; = "url"

.field private static final JSON_NAME_WORD:Ljava/lang/String; = "word"

.field private static final JSON_VALUE_OK:I = 0x3e8

.field public static final NEWS_TYPE:I = 0x2

.field private static final PAGE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WordList"

.field private static final WORD_PRE_PAGE:I = 0x5

.field private static final WORD_TIMEOUT:I = 0x1499700

.field private static mContext:Landroid/content/Context;

.field private static mWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/hotword/WordList$Word;",
            ">;"
        }
    .end annotation
.end field

.field private static mWordListAvaliable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordListAvaliable:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->fetchData2()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/WordList;->saveKeywords(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-boolean p0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordListAvaliable:Z

    return p0
.end method

.method private static checkNeedUpdate()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->checkNetworkState()I

    move-result v0

    .line 190
    .local v0, type:I
    if-ne v0, v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->iswifionly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkNetworkState()I
    .locals 4

    .prologue
    .line 205
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 208
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    :cond_0
    const/4 v2, -0x1

    .line 211
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0
.end method

.method public static constructFromJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/hotword/WordList$Word;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    const/4 v6, 0x0

    .line 459
    .local v6, response:Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #response:Lorg/json/JSONObject;
    .local v7, response:Lorg/json/JSONObject;
    move-object v6, v7

    .line 463
    .end local v7           #response:Lorg/json/JSONObject;
    .restart local v6       #response:Lorg/json/JSONObject;
    :goto_0
    if-eqz v6, :cond_8

    const-string v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 464
    const-string v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, code:I
    const/16 v11, 0x3e8

    if-ne v0, v11, :cond_7

    const-string v11, "result"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 466
    const-string v11, "result"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 467
    .local v10, words:Lorg/json/JSONObject;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 468
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v5, queryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/hotword/WordList$Word;>;"
    const-string v11, "news"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 470
    .local v4, news:Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 471
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 472
    .local v8, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 473
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/baidu/internal/keyguard/hotword/WordList;->constructNewsWord(Lorg/json/JSONObject;)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v9

    .line 474
    .local v9, word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    if-eqz v9, :cond_0

    .line 475
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 460
    .end local v0           #code:I
    .end local v3           #i:I
    .end local v4           #news:Lorg/json/JSONArray;
    .end local v5           #queryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/hotword/WordList$Word;>;"
    .end local v8           #size:I
    .end local v9           #word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    .end local v10           #words:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 461
    .local v1, e:Lorg/json/JSONException;
    const-string v11, "WordList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parse error for JSON string "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #code:I
    .restart local v4       #news:Lorg/json/JSONArray;
    .restart local v5       #queryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/hotword/WordList$Word;>;"
    .restart local v10       #words:Lorg/json/JSONObject;
    :cond_1
    const-string v11, "WordList"

    const-string v12, "no news  data"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    const-string v11, "hotword"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 483
    .local v2, hotWord:Lorg/json/JSONArray;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 484
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 486
    .restart local v8       #size:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 487
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/baidu/internal/keyguard/hotword/WordList;->constructHotWord(Lorg/json/JSONObject;)Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    move-result-object v9

    .line 488
    .restart local v9       #word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    if-eqz v9, :cond_3

    .line 489
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 493
    .end local v3           #i:I
    .end local v8           #size:I
    .end local v9           #word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    :cond_4
    const-string v11, "WordList"

    const-string v12, "no hot word  data"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v0           #code:I
    .end local v2           #hotWord:Lorg/json/JSONArray;
    .end local v4           #news:Lorg/json/JSONArray;
    .end local v5           #queryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/hotword/WordList$Word;>;"
    .end local v10           #words:Lorg/json/JSONObject;
    :cond_5
    :goto_3
    return-object v5

    .line 497
    .restart local v0       #code:I
    .restart local v10       #words:Lorg/json/JSONObject;
    :cond_6
    const-string v11, "WordList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot parse results. The result array might be corrupted. Response: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v0           #code:I
    .end local v10           #words:Lorg/json/JSONObject;
    :goto_4
    const/4 v5, 0x0

    goto :goto_3

    .line 502
    .restart local v0       #code:I
    :cond_7
    const-string v11, "WordList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got response code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 505
    .end local v0           #code:I
    :cond_8
    const-string v11, "WordList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid or ill-formatted JSON: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static constructHotWord(Lorg/json/JSONObject;)Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    .locals 4
    .parameter "jsonObject"

    .prologue
    const/4 v2, 0x0

    .line 446
    if-eqz p0, :cond_0

    const-string v1, "word"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "word"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, name:Ljava/lang/String;
    new-instance v1, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/internal/keyguard/hotword/WordList$Word;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 450
    :cond_0
    const-string v1, "WordList"

    const-string v3, "JSONObject param is null or invalid."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 453
    goto :goto_0
.end method

.method private static constructNewsWord(Lorg/json/JSONObject;)Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 435
    if-eqz p0, :cond_0

    const-string v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, title:Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lcom/baidu/internal/keyguard/hotword/WordList$Word;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 442
    .end local v0           #title:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 440
    :cond_0
    const-string v2, "WordList"

    const-string v3, "JSONObject param is null or invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static extractHotWords2(Ljava/net/HttpURLConnection;)Z
    .locals 9
    .parameter "conn"

    .prologue
    .line 511
    const/4 v5, 0x0

    .line 512
    .local v5, isPostSuccess:Z
    const/4 v4, 0x0

    .line 514
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 515
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 516
    .local v0, buffer:Ljava/io/BufferedReader;
    const-string v1, ""

    .line 517
    .local v1, content:Ljava/lang/String;
    const/4 v6, 0x0

    .line 518
    .local v6, text:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 521
    :cond_0
    const-string v7, "WordList"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_4

    .line 523
    const/4 v5, 0x0

    .line 524
    const-string v7, "WordList"

    const-string v8, "Nothing is got from server."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 535
    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 536
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 538
    :cond_2
    if-eqz v4, :cond_3

    .line 540
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 546
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #content:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/String;
    :cond_3
    :goto_2
    return v5

    .line 526
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v6       #text:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/WordList;->constructFromJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    sput-object v7, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    .line 527
    sget-object v7, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v7, :cond_1

    .line 528
    const/4 v5, 0x1

    goto :goto_1

    .line 541
    :catch_0
    move-exception v2

    .line 542
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 531
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #content:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #text:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 532
    .local v3, ex:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 533
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 535
    if-eqz p0, :cond_5

    .line 536
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 538
    :cond_5
    if-eqz v4, :cond_3

    .line 540
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 541
    :catch_2
    move-exception v2

    .line 542
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 535
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz p0, :cond_6

    .line 536
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 538
    :cond_6
    if-eqz v4, :cond_7

    .line 540
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 543
    :cond_7
    :goto_3
    throw v7

    .line 541
    :catch_3
    move-exception v2

    .line 542
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private static fetchData2()Z
    .locals 12

    .prologue
    .line 383
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->getHotwordUrl()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, userQueryUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 385
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 386
    .local v4, isPostSuccess:Z
    const/4 v5, 0x0

    .line 388
    .local v5, out:Ljava/io/OutputStream;
    const v9, 0xf00a

    :try_start_0
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 389
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 390
    .local v6, queryURL:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 392
    const-string v9, "POST"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 393
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 394
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 395
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 396
    const-string v9, "Content-Length"

    const-string v10, "0"

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 399
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 401
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 402
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 403
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 404
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 405
    .local v7, resCode:I
    const-string v9, "WordList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_0

    .line 407
    const/4 v4, 0x0

    .line 409
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 421
    if-eqz v5, :cond_1

    .line 422
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 428
    .end local v6           #queryURL:Ljava/net/URL;
    .end local v7           #resCode:I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 429
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/WordList;->extractHotWords2(Ljava/net/HttpURLConnection;)Z

    move-result v4

    .line 431
    :cond_2
    return v4

    .line 424
    .restart local v6       #queryURL:Ljava/net/URL;
    .restart local v7       #resCode:I
    :catch_0
    move-exception v3

    .line 425
    .local v3, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v3           #ex:Ljava/io/IOException;
    .end local v6           #queryURL:Ljava/net/URL;
    .end local v7           #resCode:I
    :catch_1
    move-exception v2

    .line 411
    .local v2, e:Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    const/4 v4, 0x0

    .line 421
    if-eqz v5, :cond_1

    .line 422
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 424
    :catch_2
    move-exception v3

    .line 425
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v2           #e:Ljava/net/MalformedURLException;
    .end local v3           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 414
    .local v2, e:Ljava/net/ProtocolException;
    :try_start_4
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 415
    const/4 v4, 0x0

    .line 421
    if-eqz v5, :cond_1

    .line 422
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 424
    :catch_4
    move-exception v3

    .line 425
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v2           #e:Ljava/net/ProtocolException;
    .end local v3           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 417
    .restart local v3       #ex:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 418
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 421
    if-eqz v5, :cond_1

    .line 422
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 424
    :catch_6
    move-exception v3

    .line 425
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 421
    if-eqz v5, :cond_3

    .line 422
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 426
    :cond_3
    :goto_1
    throw v9

    .line 424
    :catch_7
    move-exception v3

    .line 425
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getHotwordUrl()Ljava/lang/String;
    .locals 9

    .prologue
    .line 369
    const-string v0, "http://suoping.baidu.com/commonapi/news"

    .line 370
    .local v0, baseUrl:Ljava/lang/String;
    const-string v4, "news"

    .line 371
    .local v4, type:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, cip:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, time:Ljava/lang/String;
    invoke-static {v4, v1, v3}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getClientKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, sign:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&cip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sign="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&channelid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1000466m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, url:Ljava/lang/String;
    const-string v6, "WordList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v6, "WordList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uuid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v6, "WordList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v5
.end method

.method public static getWord(II)Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    .locals 4
    .parameter "page"
    .parameter "index"

    .prologue
    .line 348
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, p0, 0x5

    add-int/2addr v1, p1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    mul-int/lit8 v1, p0, 0x5

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    .line 352
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/hotword/WordList$Word;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getWordListLength()I
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 94
    sput-object p0, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private static isNetworkActive()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 215
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->checkNetworkState()I

    move-result v0

    .line 216
    .local v0, type:I
    const-string v2, "WordList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ConnectivityManager type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static iswifionly()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 199
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.wifi_only"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 201
    .local v0, mode:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static saveKeywords(Landroid/content/Context;)V
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 330
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    move-result-object v2

    .line 331
    .local v2, mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    const-string v5, "hotword"

    invoke-virtual {v2, v5}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->del(Ljava/lang/String;)I

    .line 332
    sget-object v5, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/ContentValues;

    .line 333
    .local v4, valuesList:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 334
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "title"

    sget-object v5, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    iget-object v5, v5, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->title:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v6, "url"

    sget-object v5, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    iget-object v5, v5, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->url:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v6, "type"

    sget-object v5, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    iget v5, v5, Lcom/baidu/internal/keyguard/hotword/WordList$Word;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    aput-object v3, v4, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    const-string v5, "hotword"

    invoke-virtual {v2, v5, v4}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->insert(Ljava/lang/String;[Landroid/content/ContentValues;)I

    .line 342
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .local v1, lastUpdateTime:Landroid/content/ContentValues;
    const-string v5, "last_update_time"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    const-string v5, "config"

    invoke-virtual {v2, v5, v1, v8, v8}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public static updateWordList(Z)V
    .locals 17
    .parameter "forceUpdate"

    .prologue
    .line 99
    if-nez p0, :cond_4

    .line 100
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    move-result-object v1

    .line 101
    .local v1, mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "last_update_time"

    aput-object v4, v3, v2

    .line 104
    .local v3, projection:[Ljava/lang/String;
    const-string v2, "config"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    .local v7, configCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 108
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, s:Ljava/lang/String;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 111
    .local v10, lastUpdateTime:Ljava/util/Date;
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v4, v15

    const-wide/32 v15, 0x1499700

    cmp-long v2, v4, v15

    if-lez v2, :cond_0

    .line 113
    const/16 p0, 0x1

    .line 116
    .end local v10           #lastUpdateTime:Ljava/util/Date;
    .end local v11           #s:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_1
    if-nez p0, :cond_4

    .line 120
    const-string v2, "hotword"

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 121
    .local v14, wordCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_a

    .line 122
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 123
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    invoke-interface {v14}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    const/16 v4, 0x32

    if-ge v2, v4, :cond_2

    .line 128
    new-instance v13, Lcom/baidu/internal/keyguard/hotword/WordList$Word;

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v13, v2, v4, v5}, Lcom/baidu/internal/keyguard/hotword/WordList$Word;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    .local v13, word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v13           #word:Lcom/baidu/internal/keyguard/hotword/WordList$Word;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 133
    :cond_3
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordListAvaliable:Z

    .line 135
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v9, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.keyguard.internal.WORD_LIST_UPDATED"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v9           #intent:Landroid/content/Intent;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 150
    .end local v1           #mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #configCursor:Landroid/database/Cursor;
    .end local v14           #wordCursor:Landroid/database/Cursor;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->isNetworkActive()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->checkNeedUpdate()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->checkNeedUpdate()Z

    move-result v2

    if-nez v2, :cond_7

    .line 151
    :cond_6
    const/16 p0, 0x0

    .line 154
    :try_start_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 155
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v2, "com.baidu.keyguard.internal.WORD_LIST_UPDATED"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/WordList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .end local v9           #intent:Landroid/content/Intent;
    :cond_7
    :goto_3
    const-string v2, "WordList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force update="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz p0, :cond_8

    .line 163
    new-instance v12, Lcom/baidu/internal/keyguard/hotword/WordList$1;

    invoke-direct {v12}, Lcom/baidu/internal/keyguard/hotword/WordList$1;-><init>()V

    .line 183
    .local v12, updateThread:Ljava/lang/Thread;
    const-string v2, "hotword_update"

    invoke-virtual {v12, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 186
    .end local v12           #updateThread:Ljava/lang/Thread;
    :cond_8
    return-void

    .line 138
    .restart local v1       #mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v7       #configCursor:Landroid/database/Cursor;
    .restart local v14       #wordCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 139
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "WordList"

    const-string v4, "Send WORD_LIST_UPDATED fail"

    invoke-static {v2, v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 142
    .end local v8           #e:Ljava/lang/Exception;
    :cond_9
    const/16 p0, 0x1

    goto :goto_1

    .line 146
    :cond_a
    const/16 p0, 0x1

    goto :goto_2

    .line 157
    .end local v1           #mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #configCursor:Landroid/database/Cursor;
    .end local v14           #wordCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 158
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v2, "WordList"

    const-string v4, "Send WORD_LIST_UPDATED fail"

    invoke-static {v2, v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static wordListAvaliable()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/baidu/internal/keyguard/hotword/WordList;->mWordListAvaliable:Z

    return v0
.end method
