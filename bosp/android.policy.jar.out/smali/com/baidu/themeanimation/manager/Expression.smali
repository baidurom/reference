.class public Lcom/baidu/themeanimation/manager/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# static fields
.field public static final EXPRESSION_TYPE_INT:I = 0x0

.field public static final EXPRESSION_TYPE_STRING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private hasEvaluated:Z

.field private mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

.field private mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field private mExpressionString:Ljava/lang/String;

.field private mIsValid:Z

.field private mMethod:Ljava/lang/reflect/Method;

.field private mObject:Ljava/lang/Object;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1
    .parameter "expressionString"
    .parameter "object"
    .parameter "method"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    .line 24
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 25
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/manager/Expression;->hasEvaluated:Z

    .line 29
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iput-object p2, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/manager/Expression;->setExpressionString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addNullVariable(Ljava/lang/String;)V
    .locals 6
    .parameter "exp"

    .prologue
    .line 143
    const-string v4, "isnull("

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, pos:I
    :goto_0
    if-ltz v1, :cond_1

    .line 145
    const-string v4, "{"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 146
    .local v2, start:I
    const-string v4, "}"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, index:I
    if-ltz v2, :cond_0

    if-ltz v0, :cond_0

    if-le v0, v2, :cond_0

    .line 148
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, variableName:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    const-string v5, "\'null\'"

    invoke-virtual {v4, v3, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v3           #variableName:Ljava/lang/String;
    :cond_0
    const-string v4, "isnull("

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 154
    goto :goto_0

    .line 155
    .end local v0           #index:I
    .end local v2           #start:I
    :cond_1
    return-void
.end method

.method private fomateExpression(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .parameter "exp"
    .parameter "symbol"

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 109
    .local v1, index:I
    if-gez v1, :cond_0

    .line 139
    .end local p1
    :goto_0
    return-object p1

    .line 113
    .restart local p1
    :cond_0
    const-string v3, ""

    .line 114
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    .local v2, length:I
    const/4 v4, 0x0

    .line 116
    .local v4, start:I
    :goto_1
    if-ltz v1, :cond_4

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    move v4, v1

    .line 120
    :goto_2
    if-ge v1, v2, :cond_1

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 122
    .local v0, c:C
    const/16 v6, 0x30

    if-ge v0, v6, :cond_3

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_3

    .line 128
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, variableName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/16 v6, 0x23

    if-ne p2, v6, :cond_2

    .line 131
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;

    invoke-virtual {v6, v5, p0}, Lcom/baidu/themeanimation/manager/ExpressionManager;->monitorVariable(Ljava/lang/String;Lcom/baidu/themeanimation/manager/Expression;)V

    .line 135
    :cond_2
    move v4, v1

    .line 136
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 137
    goto :goto_1

    .line 125
    .end local v5           #variableName:Ljava/lang/String;
    .restart local v0       #c:C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 126
    goto :goto_2

    .line 138
    .end local v0           #c:C
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .line 139
    goto/16 :goto_0
.end method

.method private isExpressionValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-boolean v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/manager/Expression;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private replaceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "exp"

    .prologue
    const/16 v10, 0x40

    .line 75
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, result:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 77
    .local v1, index:I
    if-gez v1, :cond_0

    move-object v5, v4

    .line 104
    .end local v4           #result:Ljava/lang/String;
    .local v5, result:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 81
    .end local v5           #result:Ljava/lang/Object;
    .restart local v4       #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 82
    .local v2, length:I
    const/4 v6, 0x0

    .line 83
    .local v6, start:I
    :goto_1
    if-ltz v1, :cond_4

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    move v6, v1

    .line 86
    :goto_2
    if-ge v1, v2, :cond_1

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, c:C
    const/16 v9, 0x30

    if-ge v0, v9, :cond_3

    const/16 v9, 0x2e

    if-eq v0, v9, :cond_3

    .line 94
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, variableName:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 96
    iget-object v9, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 97
    .local v7, value:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .end local v3           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    move v6, v1

    .line 102
    invoke-virtual {p1, v10, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 103
    goto :goto_1

    .line 91
    .end local v8           #variableName:Ljava/lang/String;
    .restart local v0       #c:C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_2

    .end local v0           #c:C
    :cond_4
    move-object v5, v4

    .line 104
    .restart local v5       #result:Ljava/lang/Object;
    goto :goto_0
.end method

.method private setExpressionString(Ljava/lang/String;)V
    .locals 4
    .parameter "exp"

    .prologue
    const/16 v3, 0x40

    const/16 v2, 0x23

    .line 55
    if-nez p1, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    .line 72
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paras("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/manager/Expression;->replaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/baidu/themeanimation/manager/Expression;->fomateExpression(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/baidu/themeanimation/manager/Expression;->fomateExpression(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/themeanimation/manager/Expression;->addNullVariable(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public exec()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/Expression;->exec(I)Z

    move-result v0

    return v0
.end method

.method public exec(I)Z
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 183
    const/4 v3, 0x1

    .line 185
    .local v3, result:Z
    invoke-direct {p0}, Lcom/baidu/themeanimation/manager/Expression;->isExpressionValid()Z

    move-result v6

    if-nez v6, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v5

    .line 188
    :cond_1
    const/4 v4, 0x0

    .line 190
    .local v4, value:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 192
    :try_start_0
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 197
    :goto_1
    if-eqz v4, :cond_2

    :try_start_1
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-gez v5, :cond_2

    .line 199
    :try_start_2
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 224
    :cond_2
    :goto_2
    iput-boolean v9, p0, Lcom/baidu/themeanimation/manager/Expression;->hasEvaluated:Z

    move v5, v3

    .line 225
    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 195
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 221
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 222
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 200
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 201
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, decimalFormat:Ljava/text/DecimalFormat;
    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 203
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, realValue:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 208
    .end local v0           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #realValue:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    iget-object v7, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    if-eqz v4, :cond_0

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v6

    if-nez v6, :cond_0

    .line 212
    if-eqz v4, :cond_4

    :try_start_5
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    .line 213
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v5, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v4

    .line 218
    :cond_4
    :goto_3
    if-eqz v4, :cond_2

    :try_start_6
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 219
    iget-object v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 215
    :catch_3
    move-exception v1

    .line 216
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3
.end method

.method public getExpressionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/themeanimation/manager/Expression;->isExpressionValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 247
    :goto_0
    return-object v2

    .line 239
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    iget-object v3, p0, Lcom/baidu/themeanimation/manager/Expression;->mExpressionString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v2, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 247
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/themeanimation/manager/Expression;->mIsValid:Z

    goto :goto_1
.end method

.method public hasEvaluated()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/baidu/themeanimation/manager/Expression;->hasEvaluated:Z

    return v0
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/Expression;->mMethod:Ljava/lang/reflect/Method;

    .line 164
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/themeanimation/manager/Expression;->mObject:Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public setValue(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 1
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/Expression;->exec(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/manager/Expression;->exec(I)Z

    move-result v0

    return v0
.end method
