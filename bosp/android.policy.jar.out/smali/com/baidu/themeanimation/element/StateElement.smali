.class public Lcom/baidu/themeanimation/element/StateElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "StateElement.java"


# instance fields
.field public mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/element/StateElement;->mState:I

    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 2
    .parameter "tagName"

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/themeanimation/element/StateElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/StateElement;-><init>()V

    .line 30
    .local v0, element:Lcom/baidu/themeanimation/element/StateElement;
    const-string v1, "Normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NormalState"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/StateElement;->setState(I)V

    .line 39
    :cond_1
    :goto_0
    return-object v0

    .line 33
    :cond_2
    const-string v1, "Pressed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PressedState"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/StateElement;->setState(I)V

    goto :goto_0

    .line 36
    :cond_4
    const-string v1, "ReachedState"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/StateElement;->setState(I)V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/baidu/themeanimation/element/StateElement;->mState:I

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 20
    const-string v0, "NormalState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PressedState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ReachedState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Pressed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 15
    iput p1, p0, Lcom/baidu/themeanimation/element/StateElement;->mState:I

    .line 16
    return-void
.end method
