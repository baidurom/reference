.class public abstract Lcom/baidu/ifttt/trigger/Trigger;
.super Lcom/baidu/ifttt/util/Jsonable;
.source "Trigger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Ifttt"

.field public static final TRIGGER_TYPE_ALERM:I = 0x2

.field public static final TRIGGER_TYPE_BROADCAST:I = 0x0

.field public static final TRIGGER_TYPE_CALLOG:I = 0x65

.field public static final TRIGGER_TYPE_MEDIA:I = 0x3

.field public static final TRIGGER_TYPE_PROVOIDER:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mExtra:Landroid/os/Bundle;

.field protected mHandler:Landroid/os/Handler;

.field protected mTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/baidu/ifttt/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/ifttt/util/Jsonable;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mTasks:Ljava/util/HashSet;

    .line 31
    iput p1, p0, Lcom/baidu/ifttt/trigger/Trigger;->mType:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "jsonObject"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/ifttt/util/Jsonable;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mTasks:Ljava/util/HashSet;

    .line 37
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createTrigger(Ljava/lang/String;)Lcom/baidu/ifttt/trigger/Trigger;
    .locals 5
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 131
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, json:Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 137
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 145
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #type:I
    :goto_0
    return-object v3

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Lorg/json/JSONException;
    goto :goto_0

    .line 139
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #json:Lorg/json/JSONObject;
    .restart local v2       #type:I
    :pswitch_0
    new-instance v3, Lcom/baidu/ifttt/trigger/BroadcastTrigger;

    invoke-direct {v3, v1}, Lcom/baidu/ifttt/trigger/BroadcastTrigger;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 141
    :pswitch_1
    new-instance v3, Lcom/baidu/ifttt/trigger/ProviderTrigger;

    invoke-direct {v3, v1}, Lcom/baidu/ifttt/trigger/ProviderTrigger;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 143
    :pswitch_2
    new-instance v3, Lcom/baidu/ifttt/trigger/AlarmTrigger;

    invoke-direct {v3, v1}, Lcom/baidu/ifttt/trigger/AlarmTrigger;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final addTask(Lcom/baidu/ifttt/Task;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mTasks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method protected buildExtraData()Z
    .locals 1

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mExtra:Landroid/os/Bundle;

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Lcom/baidu/ifttt/trigger/Trigger;)Z
    .locals 2
    .parameter "t"

    .prologue
    .line 120
    iget v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mType:I

    iget v1, p1, Lcom/baidu/ifttt/trigger/Trigger;->mType:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/ifttt/trigger/Trigger;->getJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/ifttt/trigger/Trigger;->getJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTasksSize()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mTasks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method protected initAfterContent()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected final onTrigger()V
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/baidu/ifttt/trigger/Trigger;->buildExtraData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v4, p0, Lcom/baidu/ifttt/trigger/Trigger;->mTasks:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/Task;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/ifttt/Task;

    .line 75
    .local v3, task:Lcom/baidu/ifttt/Task;
    invoke-virtual {v3}, Lcom/baidu/ifttt/Task;->getActions()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 76
    .local v2, itAction:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/action/Action;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/ifttt/action/Action;

    .line 78
    .local v0, action:Lcom/baidu/ifttt/action/Action;
    iget-object v4, p0, Lcom/baidu/ifttt/trigger/Trigger;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Lcom/baidu/ifttt/action/Action;->doCheck(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    iget-object v4, p0, Lcom/baidu/ifttt/trigger/Trigger;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Lcom/baidu/ifttt/action/Action;->doAction(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract registerTrigger()V
.end method

.method public final removeTask(Lcom/baidu/ifttt/Task;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/Trigger;->mTasks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/Trigger;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/baidu/ifttt/trigger/Trigger;->initAfterContent()V

    .line 46
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/Trigger;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v0, jsonObject:Lorg/json/JSONObject;
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/baidu/ifttt/trigger/Trigger;->mType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract unRegisterTrigger()V
.end method
