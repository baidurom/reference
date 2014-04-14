.class public Lcom/baidu/themeanimation/element/TriggerElement;
.super Lcom/baidu/themeanimation/element/Element;
.source "TriggerElement.java"


# static fields
.field public static ACTION_DOUBLE:Ljava/lang/String;

.field public static ACTION_DOWN:Ljava/lang/String;

.field public static ACTION_PAUSE:Ljava/lang/String;

.field public static ACTION_RESUME:Ljava/lang/String;

.field public static ACTION_UP:Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mProperty:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "down"

    sput-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_DOWN:Ljava/lang/String;

    .line 31
    const-string v0, "up"

    sput-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_UP:Ljava/lang/String;

    .line 32
    const-string v0, "double"

    sput-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_DOUBLE:Ljava/lang/String;

    .line 33
    const-string v0, "resume"

    sput-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_RESUME:Ljava/lang/String;

    .line 34
    const-string v0, "pause"

    sput-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_PAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 50
    new-instance v0, Lcom/baidu/themeanimation/element/TriggerElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/TriggerElement;-><init>()V

    return-object v0
.end method

.method public exec()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TriggerElement;->getCommandElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TriggerElement;->getCommandElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/CommandElement;

    .line 72
    .local v0, cmd:Lcom/baidu/themeanimation/element/CommandElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/CommandElement;->getCommandType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/CommandElement;->execDelay()V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/CommandElement;->execDelay()V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/CommandElement;->execDelay()V

    goto :goto_0

    .line 87
    .end local v0           #cmd:Lcom/baidu/themeanimation/element/CommandElement;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public exec(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TriggerElement;->exec()V

    .line 92
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mProperty:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->execElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 45
    const-string v0, "Trigger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mAction:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0
    .parameter "property"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mProperty:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mTarget:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TriggerElement;->mValue:Ljava/lang/String;

    .line 67
    return-void
.end method
