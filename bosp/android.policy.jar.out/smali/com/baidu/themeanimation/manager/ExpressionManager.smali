.class public Lcom/baidu/themeanimation/manager/ExpressionManager;
.super Ljava/lang/Object;
.source "ExpressionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpressionManager"

.field static mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private mElementsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExpressionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/manager/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/manager/Expression;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOperandStackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Stack;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorStackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Stack;",
            ">;"
        }
    .end annotation
.end field

.field private mVariablesValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mExpressionList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;
    .locals 2

    .prologue
    .line 57
    sget-object v1, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    monitor-exit v1

    .line 64
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/manager/ExpressionManager;

    invoke-direct {v0}, Lcom/baidu/themeanimation/manager/ExpressionManager;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-object v0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mInstance:Lcom/baidu/themeanimation/manager/ExpressionManager;

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addExpression(Lcom/baidu/themeanimation/manager/Expression;)V
    .locals 1
    .parameter "expression"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mExpressionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public execAll()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mExpressionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/manager/Expression;

    .line 75
    .local v0, expression:Lcom/baidu/themeanimation/manager/Expression;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/manager/Expression;->hasEvaluated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/baidu/themeanimation/manager/Expression;->exec()Z

    goto :goto_0

    .line 79
    .end local v0           #expression:Lcom/baidu/themeanimation/manager/Expression;
    :cond_1
    return-void
.end method

.method public execElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "name"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 180
    iget-object v6, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 181
    .local v2, elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 182
    .local v1, element:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 184
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz p2, :cond_0

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 185
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, tMethodName:Ljava/lang/String;
    const-string v6, "command"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execElement "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v3, 0x0

    .end local v1           #element:Ljava/lang/Object;
    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 190
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .restart local v1       #element:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 192
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v1           #element:Ljava/lang/Object;
    .end local v3           #i:I
    .end local v5           #tMethodName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    const-string v6, "command"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execElement: error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getCategoryValue()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 266
    const-wide/16 v0, 0x3

    .line 268
    .local v0, category:J
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 273
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public getElementArrayByName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOperandStack(Ljava/lang/String;)Ljava/util/Stack;
    .locals 2
    .parameter "_expression"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, localStack:Ljava/util/Stack;
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #localStack:Ljava/util/Stack;
    check-cast v0, Ljava/util/Stack;

    .line 109
    .restart local v0       #localStack:Ljava/util/Stack;
    :cond_0
    return-object v0
.end method

.method public getOperatorStack(Ljava/lang/String;)Ljava/util/Stack;
    .locals 2
    .parameter "_expression"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, localStack:Ljava/util/Stack;
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #localStack:Ljava/util/Stack;
    check-cast v0, Ljava/util/Stack;

    .line 94
    .restart local v0       #localStack:Ljava/util/Stack;
    :cond_0
    return-object v0
.end method

.method public monitorElement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "element"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .restart local v0       #elements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public monitorVariable(Ljava/lang/String;Lcom/baidu/themeanimation/manager/Expression;)V
    .locals 2
    .parameter "variableName"
    .parameter "expression"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    .local v0, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .restart local v0       #expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mElementsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    :cond_4
    return-void
.end method

.method public setOperandStack(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1
    .parameter "_expression"
    .parameter "_stack"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperandStackCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public setOperatorStack(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1
    .parameter "_expression"
    .parameter "_stack"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mOperatorStackCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public setVariableValue(IJ)V
    .locals 7
    .parameter "va_index"
    .parameter "value"

    .prologue
    .line 244
    const-wide v0, 0x7fffffffffffffffL

    .line 245
    .local v0, currentValue:J
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 249
    :cond_0
    cmp-long v4, v0, p2

    if-nez v4, :cond_2

    .line 263
    :cond_1
    return-void

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 255
    .local v2, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v4

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-eqz v2, :cond_1

    .line 258
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 259
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/manager/Expression;

    invoke-static {p1}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/baidu/themeanimation/manager/Expression;->setValue(Ljava/lang/String;J)Ljava/lang/Boolean;

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setVariableValue(Ljava/lang/String;J)V
    .locals 6
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 238
    :cond_0
    return-void

    .line 222
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    .line 223
    .local v0, currentValue:J
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 227
    :cond_2
    cmp-long v4, v0, p2

    if-eqz v4, :cond_0

    .line 230
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 231
    .local v2, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    iget-object v4, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mVariablesValue:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz v2, :cond_0

    .line 234
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 235
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/manager/Expression;

    invoke-virtual {v4, p1, p2, p3}, Lcom/baidu/themeanimation/manager/Expression;->setValue(Ljava/lang/String;J)Ljava/lang/Boolean;

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setVariableValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 206
    if-nez p1, :cond_1

    .line 216
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ExpressionManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 210
    .local v0, expressions:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/manager/Expression;>;"
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/manager/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/baidu/themeanimation/manager/Expression;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
