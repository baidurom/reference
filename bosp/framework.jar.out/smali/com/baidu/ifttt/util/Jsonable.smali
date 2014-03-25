.class public abstract Lcom/baidu/ifttt/util/Jsonable;
.super Ljava/lang/Object;
.source "Jsonable.java"


# instance fields
.field private mJsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/ifttt/util/Jsonable;->mJsonString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Lcom/baidu/ifttt/util/Jsonable;

    .line 18
    .local v0, json:Lcom/baidu/ifttt/util/Jsonable;
    invoke-virtual {v0}, Lcom/baidu/ifttt/util/Jsonable;->getJsonString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/baidu/ifttt/util/Jsonable;->getJsonString()Ljava/lang/String;

    .line 20
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/baidu/ifttt/util/Jsonable;->mJsonString:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/ifttt/util/Jsonable;->mJsonString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const/4 v2, 0x1

    .line 23
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7
    iget-object v1, p0, Lcom/baidu/ifttt/util/Jsonable;->mJsonString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/baidu/ifttt/util/Jsonable;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    .local v0, json:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/ifttt/util/Jsonable;->mJsonString:Ljava/lang/String;

    .line 13
    .end local v0           #json:Lorg/json/JSONObject;
    :cond_0
    iget-object v1, p0, Lcom/baidu/ifttt/util/Jsonable;->mJsonString:Ljava/lang/String;

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/baidu/ifttt/util/Jsonable;->getJsonString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method
