.class public abstract Lcom/baidu/ifttt/action/Action;
.super Lcom/baidu/ifttt/util/Jsonable;
.source "Action.java"


# static fields
.field public static final ACTION_TYPE_ACTIVITY:I = 0x0

.field public static final ACTION_TYPE_BROADCAST:I = 0x1

.field public static final ACTION_TYPE_FILE:I = 0x5

.field public static final ACTION_TYPE_SMS:I = 0x3

.field public static final ACTION_TYPE_SWITCH:I = 0x4

.field public static final ACTION_TYPE_YISCREEN:I = 0x2

.field public static final ACTION_TYPE_YITEXT:I = 0xc9

.field public static final TAG:Ljava/lang/String; = "Ifttt"


# instance fields
.field protected mConditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/baidu/ifttt/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field public mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/ifttt/util/Jsonable;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/ifttt/action/Action;->mConditions:Ljava/util/HashSet;

    .line 27
    iput p1, p0, Lcom/baidu/ifttt/action/Action;->mType:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/ifttt/util/Jsonable;-><init>()V

    .line 23
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/baidu/ifttt/action/Action;->mConditions:Ljava/util/HashSet;

    .line 32
    :try_start_0
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/ifttt/action/Action;->mType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :goto_0
    :try_start_1
    const-string v2, "conditions"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 39
    .local v1, jsonArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/baidu/ifttt/action/Action;->mConditions:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/ifttt/condition/Condition;->createCondition(Ljava/lang/String;)Lcom/baidu/ifttt/condition/Condition;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0           #i:I
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 45
    :cond_0
    return-void

    .line 33
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static createAction(Ljava/lang/String;)Lcom/baidu/ifttt/action/Action;
    .locals 5
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, json:Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 134
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #type:I
    :goto_0
    return-object v3

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0

    .line 130
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #json:Lorg/json/JSONObject;
    .restart local v2       #type:I
    :pswitch_0
    new-instance v3, Lcom/baidu/ifttt/action/ActivityAction;

    invoke-direct {v3, v1}, Lcom/baidu/ifttt/action/ActivityAction;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 132
    :pswitch_1
    new-instance v3, Lcom/baidu/ifttt/action/BroadcastAction;

    invoke-direct {v3, v1}, Lcom/baidu/ifttt/action/BroadcastAction;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCondition(Lcom/baidu/ifttt/condition/Condition;)V
    .locals 1
    .parameter "con"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/ifttt/action/Action;->mConditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public abstract doAction(Landroid/os/Bundle;)V
.end method

.method public doCheck(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extra"

    .prologue
    .line 97
    const/4 v2, 0x1

    .line 98
    .local v2, result:Z
    iget-object v3, p0, Lcom/baidu/ifttt/action/Action;->mConditions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/condition/Condition;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ifttt/condition/Condition;

    .line 101
    .local v0, con:Lcom/baidu/ifttt/condition/Condition;
    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/ifttt/condition/Condition;->doCheck(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 102
    :goto_1
    goto :goto_0

    .line 101
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 103
    .end local v0           #con:Lcom/baidu/ifttt/condition/Condition;
    :cond_1
    return v2
.end method

.method public equals(Lcom/baidu/ifttt/action/Action;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 108
    iget v0, p0, Lcom/baidu/ifttt/action/Action;->mType:I

    iget v1, p1, Lcom/baidu/ifttt/action/Action;->mType:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/ifttt/action/Action;->getJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/ifttt/action/Action;->getJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baidu/ifttt/action/Action;->mContext:Landroid/content/Context;

    .line 49
    iget-object v1, p0, Lcom/baidu/ifttt/action/Action;->mConditions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/condition/Condition;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ifttt/condition/Condition;

    iget-object v2, p0, Lcom/baidu/ifttt/action/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/ifttt/condition/Condition;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 62
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    iget v4, p0, Lcom/baidu/ifttt/action/Action;->mType:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 67
    .local v1, jsonArray:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/baidu/ifttt/action/Action;->mConditions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/condition/Condition;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/ifttt/condition/Condition;

    invoke-virtual {v3}, Lcom/baidu/ifttt/condition/Condition;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 76
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/condition/Condition;>;"
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 79
    const/4 v2, 0x0

    :cond_0
    :goto_1
    return-object v2

    .line 71
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/condition/Condition;>;"
    .restart local v1       #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 72
    const-string v3, "conditions"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
