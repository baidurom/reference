.class public Lcom/baidu/ifttt/Task;
.super Lcom/baidu/ifttt/util/Jsonable;
.source "Task.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/ifttt/Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/baidu/ifttt/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mSource:Ljava/lang/String;

.field private mTrigger:Lcom/baidu/ifttt/trigger/Trigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/baidu/ifttt/Task$1;

    invoke-direct {v0}, Lcom/baidu/ifttt/Task$1;-><init>()V

    sput-object v0, Lcom/baidu/ifttt/Task;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/ifttt/util/Jsonable;-><init>()V

    .line 21
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/baidu/ifttt/Task;->mActions:Ljava/util/HashSet;

    .line 27
    const/4 v2, 0x0

    .line 29
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 30
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v4, "trigger"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/ifttt/trigger/Trigger;->createTrigger(Ljava/lang/String;)Lcom/baidu/ifttt/trigger/Trigger;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 38
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string v4, "actions"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 39
    .local v1, jsonArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 40
    iget-object v4, p0, Lcom/baidu/ifttt/Task;->mActions:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/ifttt/action/Action;->createAction(Ljava/lang/String;)Lcom/baidu/ifttt/action/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0           #i:I
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 48
    :cond_0
    :try_start_3
    const-string/jumbo v4, "source"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/ifttt/Task;->mSource:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 53
    :goto_2
    return-void

    .line 50
    :catch_1
    move-exception v4

    goto :goto_2

    .line 32
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    goto :goto_0
.end method


# virtual methods
.method public addAction(Lcom/baidu/ifttt/action/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mActions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/baidu/ifttt/action/Action;->setContext(Landroid/content/Context;)V

    .line 98
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/baidu/ifttt/Task;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public getActions()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/baidu/ifttt/action/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mActions:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTrigger()Lcom/baidu/ifttt/trigger/Trigger;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/ifttt/Task;->mContext:Landroid/content/Context;

    .line 61
    iget-object v2, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    invoke-virtual {v2, p1}, Lcom/baidu/ifttt/trigger/Trigger;->setContext(Landroid/content/Context;)V

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/baidu/ifttt/Task;->mActions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/action/Action;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ifttt/action/Action;

    .line 68
    .local v0, action:Lcom/baidu/ifttt/action/Action;
    iget-object v2, p0, Lcom/baidu/ifttt/Task;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/baidu/ifttt/action/Action;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 70
    .end local v0           #action:Lcom/baidu/ifttt/action/Action;
    :cond_1
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/ifttt/Task;->mHandler:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    invoke-virtual {v0, p1}, Lcom/baidu/ifttt/trigger/Trigger;->setHandler(Landroid/os/Handler;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setTrigger(Lcom/baidu/ifttt/trigger/Trigger;)V
    .locals 1
    .parameter "trigger"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    .line 81
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/baidu/ifttt/trigger/Trigger;->setContext(Landroid/content/Context;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/baidu/ifttt/Task;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/baidu/ifttt/trigger/Trigger;->setHandler(Landroid/os/Handler;)V

    .line 87
    :cond_1
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 131
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    if-eqz v3, :cond_0

    .line 134
    const-string/jumbo v3, "trigger"

    iget-object v4, p0, Lcom/baidu/ifttt/Task;->mTrigger:Lcom/baidu/ifttt/trigger/Trigger;

    invoke-virtual {v4}, Lcom/baidu/ifttt/trigger/Trigger;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 139
    .local v1, jsonArray:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/baidu/ifttt/Task;->mActions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/action/Action;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/ifttt/action/Action;

    invoke-virtual {v3}, Lcom/baidu/ifttt/action/Action;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 147
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/action/Action;>;"
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 150
    const/4 v2, 0x0

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v2

    .line 143
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/action/Action;>;"
    .restart local v1       #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 144
    const-string v3, "actions"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/baidu/ifttt/Task;->getJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return-void
.end method
