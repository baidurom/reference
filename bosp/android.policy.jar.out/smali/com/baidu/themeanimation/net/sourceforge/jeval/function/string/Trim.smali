.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/string/Trim;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;
    .locals 8
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, result:Ljava/lang/String;
    const-string v2, "One string argument is required."

    .line 70
    .local v2, exceptionMessage:Ljava/lang/String;
    move-object v5, p2

    .line 72
    .local v5, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, argumentOne:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 82
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v6

    .line 76
    .end local v0           #argumentOne:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 77
    .local v3, fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 78
    .end local v3           #fe:Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-direct {v6, v2, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "trim"

    return-object v0
.end method
