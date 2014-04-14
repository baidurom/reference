.class public Lcom/baidu/themeanimation/element/TriggersElement;
.super Lcom/baidu/themeanimation/element/Element;
.source "TriggersElement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 14
    new-instance v0, Lcom/baidu/themeanimation/element/TriggersElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/TriggersElement;-><init>()V

    return-object v0
.end method

.method public exec()V
    .locals 3

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TriggersElement;->getTriggerElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TriggersElement;->getTriggerElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/TriggerElement;

    .line 20
    .local v1, trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TriggerElement;->exec()V

    goto :goto_0

    .line 23
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    :cond_0
    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TriggersElement;->getTriggerElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TriggersElement;->getTriggerElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/TriggerElement;

    .line 28
    .local v1, trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/TriggerElement;->exec(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    :cond_0
    return-void
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 9
    const-string v0, "Triggers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
