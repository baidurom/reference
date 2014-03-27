.class public abstract Lcom/baidu/ifttt/condition/Condition;
.super Lcom/baidu/ifttt/util/Jsonable;
.source "Condition.java"


# static fields
.field public static final DOWNLOAD_CONDITION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Ifttt"

.field public static final YI_CONDITION:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSerializeString:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/ifttt/util/Jsonable;-><init>()V

    .line 20
    iput p1, p0, Lcom/baidu/ifttt/condition/Condition;->mType:I

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/ifttt/util/Jsonable;-><init>()V

    .line 25
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/ifttt/condition/Condition;->mType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createCondition(Ljava/lang/String;)Lcom/baidu/ifttt/condition/Condition;
    .locals 5
    .parameter "str"

    .prologue
    const/4 v4, 0x0

    .line 57
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, json:Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 64
    .end local v1           #json:Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method public abstract doCheck(Landroid/os/Bundle;)Z
.end method

.method public equals(Lcom/baidu/ifttt/condition/Condition;)Z
    .locals 2
    .parameter "condition"

    .prologue
    .line 36
    iget v0, p0, Lcom/baidu/ifttt/condition/Condition;->mType:I

    iget v1, p1, Lcom/baidu/ifttt/condition/Condition;->mType:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/ifttt/condition/Condition;->getJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/ifttt/condition/Condition;->getJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/ifttt/condition/Condition;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v0, jsonObject:Lorg/json/JSONObject;
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/baidu/ifttt/condition/Condition;->mType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method
