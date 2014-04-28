.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/string/EqualsIgnoreCase;
.super Ljava/lang/Object;
.source "EqualsIgnoreCase.java"

# interfaces
.implements Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;
    .locals 10
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    .local v5, result:Ljava/lang/String;
    const-string v3, "Two string arguments are required."

    .line 76
    .local v3, exceptionMessage:Ljava/lang/String;
    const/16 v7, 0x2c

    invoke-static {p2, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->getStrings(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v6

    .line 79
    .local v6, strings:Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 80
    new-instance v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-direct {v7, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v8

    invoke-static {v7, v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, argumentOne:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v8

    invoke-static {v7, v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, argumentTwo:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    const-string v5, "1.0"
    :try_end_0
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_0
    new-instance v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v7, v5, v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v7

    .line 92
    :cond_1
    :try_start_1
    const-string v5, "0.0"
    :try_end_1
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 94
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v1           #argumentTwo:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 95
    .local v4, fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    new-instance v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 96
    .end local v4           #fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    :catch_1
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-direct {v7, v3, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "equalsIgnoreCase"

    return-object v0
.end method
