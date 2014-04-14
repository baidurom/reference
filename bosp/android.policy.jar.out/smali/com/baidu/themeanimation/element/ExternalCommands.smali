.class public Lcom/baidu/themeanimation/element/ExternalCommands;
.super Lcom/baidu/themeanimation/element/Element;
.source "ExternalCommands.java"


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
    new-instance v0, Lcom/baidu/themeanimation/element/ExternalCommands;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/ExternalCommands;-><init>()V

    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 9
    const-string v0, "ExternalCommands"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
