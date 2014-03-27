.class public Lcom/baidu/themeanimation/element/Command;
.super Lcom/baidu/themeanimation/element/CommandElement;
.source "Command.java"


# instance fields
.field private mProperty:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/CommandElement;-><init>()V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/Command;->setCommandType(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/themeanimation/element/Command;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/Command;-><init>()V

    return-object v0
.end method

.method public exec()V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/Command;->mTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/themeanimation/element/Command;->mProperty:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/themeanimation/element/Command;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->execElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 27
    const-string v0, "Command"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 36
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 37
    .local v0, idx:I
    if-lez v0, :cond_0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/element/Command;->mTarget:Ljava/lang/String;

    .line 39
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/themeanimation/element/Command;->mProperty:Ljava/lang/String;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/baidu/themeanimation/element/Command;->mTarget:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/themeanimation/element/Command;->mValue:Ljava/lang/String;

    .line 47
    return-void
.end method
