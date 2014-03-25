.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Len;
.super Ljava/lang/Object;
.source "Len.java"

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
    .locals 5
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 62
    .local v1, result:Ljava/lang/Double;
    :try_start_0
    new-instance v1, Ljava/lang/Double;

    .end local v1           #result:Ljava/lang/Double;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .restart local v1       #result:Ljava/lang/Double;
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 63
    .end local v1           #result:Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    const-string v3, "Invalid argument."

    invoke-direct {v2, v3, v0}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "len"

    return-object v0
.end method
