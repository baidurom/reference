.class public Lcom/baidu/themeanimation/element/VarElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "VarElement.java"


# static fields
.field private static final TYPE_NUM:I = 0x0

.field private static final TYPE_STR:I = 0x1


# instance fields
.field private mConst:Z

.field private mExpression:Ljava/lang/String;

.field private mHasValue:Z

.field private mThreshold:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mHasValue:Z

    .line 16
    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mThreshold:I

    .line 19
    iput v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    .line 20
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mConst:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mExpression:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/themeanimation/element/VarElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/VarElement;-><init>()V

    return-object v0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mThreshold:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 26
    const-string v0, "Var"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Variable"

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

.method public setConst(Ljava/lang/String;)V
    .locals 1
    .parameter "isConst"

    .prologue
    .line 64
    invoke-static {p1}, Lcom/baidu/themeanimation/util/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mConst:Z

    .line 65
    return-void
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 2
    .parameter "expression"

    .prologue
    const/4 v1, 0x1

    .line 36
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mConst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mHasValue:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VarElement;->mExpression:Ljava/lang/String;

    .line 40
    if-eqz p1, :cond_1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iput v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    .line 43
    :cond_1
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mHasValue:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/VarElement;->update(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 72
    iput p1, p0, Lcom/baidu/themeanimation/element/VarElement;->mThreshold:I

    .line 73
    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/VarElement;->setThreshold(I)V

    .line 69
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 52
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    goto :goto_0
.end method

.method public update(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 80
    iget v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mType:I

    if-nez v1, :cond_1

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, number:I
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VarElement;->getName()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 83
    iget v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mThreshold:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/themeanimation/element/VarElement;->mThreshold:I

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VarElement;->execTrigger()V

    .line 89
    .end local v0           #number:I
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VarElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
