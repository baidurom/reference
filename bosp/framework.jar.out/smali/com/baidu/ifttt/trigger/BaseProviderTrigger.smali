.class public abstract Lcom/baidu/ifttt/trigger/BaseProviderTrigger;
.super Lcom/baidu/ifttt/trigger/Trigger;
.source "BaseProviderTrigger.java"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/ifttt/trigger/Trigger;-><init>(I)V

    .line 51
    new-instance v0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger$1;

    iget-object v1, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/ifttt/trigger/BaseProviderTrigger$1;-><init>(Lcom/baidu/ifttt/trigger/BaseProviderTrigger;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mObserver:Landroid/database/ContentObserver;

    .line 14
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mUri:Landroid/net/Uri;

    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/ifttt/trigger/Trigger;-><init>(Lorg/json/JSONObject;)V

    .line 51
    new-instance v0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger$1;

    iget-object v1, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/ifttt/trigger/BaseProviderTrigger$1;-><init>(Lcom/baidu/ifttt/trigger/BaseProviderTrigger;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mObserver:Landroid/database/ContentObserver;

    .line 27
    return-void
.end method


# virtual methods
.method public registerTrigger()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/baidu/ifttt/trigger/Trigger;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public unRegisterTrigger()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    return-void
.end method
