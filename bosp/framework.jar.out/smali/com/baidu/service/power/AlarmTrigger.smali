.class public abstract Lcom/baidu/service/power/AlarmTrigger;
.super Lcom/baidu/service/power/Trigger;
.source "AlarmTrigger.java"


# instance fields
.field mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/service/power/Trigger;-><init>()V

    return-void
.end method


# virtual methods
.method generateJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v2, "alarm"

    iget-object v3, p0, Lcom/baidu/service/power/AlarmTrigger;->mTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/baidu/service/power/AlarmTrigger;->mTime:Ljava/lang/String;

    .line 19
    return-void
.end method
