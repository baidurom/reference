.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/string/Length;
.super Ljava/lang/Object;
.source "Length.java"

# interfaces
.implements Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;
    .locals 9
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v4, 0x0

    .line 66
    .local v4, result:Ljava/lang/Integer;
    const-string v2, "One string argument is required."

    .line 69
    .local v2, exceptionMessage:Ljava/lang/String;
    move-object v5, p2

    .line 71
    .local v5, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, argumentOne:Ljava/lang/String;
    new-instance v4, Ljava/lang/Integer;

    .end local v4           #result:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .restart local v4       #result:Ljava/lang/Integer;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v6

    .line 75
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 76
    .local v3, fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 77
    .end local v3           #fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-direct {v6, v2, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "length"

    return-object v0
.end method
