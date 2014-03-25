.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/string/Ifelse;
.super Ljava/lang/Object;
.source "Ifelse.java"

# interfaces
.implements Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
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

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, result:Ljava/lang/String;
    const-string v2, "One string argument and two character arguments are required."

    .line 67
    .local v2, exceptionMessage:Ljava/lang/String;
    const/16 v6, 0x2c

    invoke-static {p2, v6}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->getStrings(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v5

    .line 75
    .local v5, values:Ljava/util/ArrayList;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 77
    .local v0, argumentTwo:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 78
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .restart local v3       #result:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 88
    .local v4, result_true:Ljava/lang/Double;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .end local v4           #result_true:Ljava/lang/Double;
    :goto_1
    return-object v6

    .line 80
    :cond_0
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0           #argumentTwo:Ljava/lang/Double;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    invoke-direct {v6, v2, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #argumentTwo:Ljava/lang/Double;
    .restart local v3       #result:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 91
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v6, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v6, v3, v10}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "ifelse"

    return-object v0
.end method
