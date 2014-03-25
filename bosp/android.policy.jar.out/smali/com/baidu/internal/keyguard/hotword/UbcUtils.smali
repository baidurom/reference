.class public final Lcom/baidu/internal/keyguard/hotword/UbcUtils;
.super Ljava/lang/Object;
.source "UbcUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final UB_KEYGUARD_SWITCH_PAGE:Ljava/lang/String; = "0204"

.field public static final UB_KEYGUARD_UNLOCK_CAMERA:Ljava/lang/String; = "0250"

.field public static final UB_KEYGUARD_UNLOCK_HOTWORD:Ljava/lang/String; = "0203"

.field public static final UB_KEYGUARD_UNLOCK_HOTWORD_CLICK:Ljava/lang/String; = "0207"

.field public static final UB_KEYGUARD_UNLOCK_MAIN:Ljava/lang/String; = "0200"

.field public static final UB_KEYGUARD_UNLOCK_MESSAGING:Ljava/lang/String; = "0202"

.field public static final UB_KEYGUARD_UNLOCK_NEWS:Ljava/lang/String; = "0205"

.field public static final UB_KEYGUARD_UNLOCK_NEWS_CLICK:Ljava/lang/String; = "0208"

.field public static final UB_KEYGUARD_UNLOCK_PHONE:Ljava/lang/String; = "0201"

.field public static final UB_KEYGUARD_UNLOCK_REFRESH:Ljava/lang/String; = "0251"

.field private static instance:Lcom/baidu/internal/keyguard/hotword/UbcUtils;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "UbcUtils"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildJsonStrOnlyKey(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "key"

    .prologue
    .line 69
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .local v1, jsonArray:Lorg/json/JSONArray;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 77
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private buildJsonStrWithList(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v3, jsonObject:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 117
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
    const/4 v3, 0x0

    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 121
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private buildJsonStrWithStr(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 91
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 95
    .local v1, jsonArray:Lorg/json/JSONArray;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 97
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 99
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 102
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    sput-object p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->mContext:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->instance:Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;-><init>()V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->instance:Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    .line 65
    :cond_0
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->instance:Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    return-object v0
.end method

.method private presistUbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "ub"

    .prologue
    .line 130
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;-><init>(Lcom/baidu/internal/keyguard/hotword/UbcUtils;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, ubcThread:Ljava/lang/Thread;
    const-string v1, "hotword_ubc"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method


# virtual methods
.method public addStatistic(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->buildJsonStrOnlyKey(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    .local v0, jsonUB:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->presistUbc(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0           #jsonUB:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public addStatistic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->buildJsonStrWithStr(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    .local v0, jsonUB:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->presistUbc(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v0           #jsonUB:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public addStatistic(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->buildJsonStrWithList(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    .local v0, jsonUB:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->presistUbc(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v0           #jsonUB:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
