.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/string/CharAt;
.super Ljava/lang/Object;
.source "CharAt.java"

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
    .locals 11
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, result:Ljava/lang/String;
    const-string v3, "One string and one integer argument are required."

    .line 75
    .local v3, exceptionMessage:Ljava/lang/String;
    const/16 v8, 0x2c

    invoke-static {p2, v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->getOneStringAndOneInteger(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v7

    .line 78
    .local v7, values:Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 79
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-direct {v8, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 83
    :cond_0
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v9

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, argumentOne:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 87
    .local v5, index:I
    const/4 v8, 0x1

    new-array v1, v8, [C

    .line 88
    .local v1, character:[C
    const/4 v8, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v1, v8

    .line 90
    new-instance v6, Ljava/lang/String;

    .end local v6           #result:Ljava/lang/String;
    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .restart local v6       #result:Ljava/lang/String;
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v8, v6, v10}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v8

    .line 91
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v1           #character:[C
    .end local v5           #index:I
    .end local v6           #result:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 92
    .local v4, fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 93
    .end local v4           #fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    :catch_1
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-direct {v8, v3, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "charAt"

    return-object v0
.end method
