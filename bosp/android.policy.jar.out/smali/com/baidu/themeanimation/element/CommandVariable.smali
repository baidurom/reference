.class public Lcom/baidu/themeanimation/element/CommandVariable;
.super Lcom/baidu/themeanimation/element/CommandElement;
.source "CommandVariable.java"


# static fields
.field private static final TYPE_NUM:I = 0x0

.field private static final TYPE_STR:I = 0x1


# instance fields
.field private mConst:Z

.field private mExpression:Lcom/baidu/themeanimation/manager/Expression;

.field private mExpressionString:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/CommandElement;-><init>()V

    .line 23
    iput v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mType:I

    .line 24
    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mConst:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/CommandVariable;->setCommandType(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 36
    new-instance v0, Lcom/baidu/themeanimation/element/CommandVariable;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/CommandVariable;-><init>()V

    return-object v0
.end method

.method public exec()V
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    .line 78
    :goto_0
    iget v1, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mType:I

    if-nez v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/themeanimation/util/Utils;->isInt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/CommandVariable;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 86
    :cond_0
    :goto_1
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpression:Lcom/baidu/themeanimation/manager/Expression;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/manager/Expression;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/CommandVariable;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getConst()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mConst:Z

    return v0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mType:I

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 31
    const-string v0, "VariableCommand"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setConst(Ljava/lang/String;)V
    .locals 1
    .parameter "isConst"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/baidu/themeanimation/util/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mConst:Z

    .line 62
    return-void
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mExpressionString:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 49
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mType:I

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/CommandVariable;->mType:I

    goto :goto_0
.end method
