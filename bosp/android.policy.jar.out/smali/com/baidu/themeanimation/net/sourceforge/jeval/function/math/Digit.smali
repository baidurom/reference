.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Digit;
.super Ljava/lang/Object;
.source "Digit.java"

# interfaces
.implements Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 24
    const/4 v6, 0x0

    .line 26
    .local v6, result:I
    const/16 v7, 0x2c

    invoke-static {p2, v7}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionHelper;->getDoubles(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v5

    .line 29
    .local v5, numbers:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 30
    new-instance v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    const-string v8, "Two numeric arguments are required."

    invoke-direct {v7, v8}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 34
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 35
    .local v0, argumentOne:D
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 37
    .local v2, argumentTwo:D
    :goto_0
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-lez v7, :cond_1

    .line 38
    const-wide/high16 v7, 0x4024

    rem-double v7, v0, v7

    double-to-int v6, v7

    .line 39
    const-wide/high16 v7, 0x4024

    div-double/2addr v0, v7

    .line 40
    const-wide/16 v7, 0x0

    cmpl-double v7, v2, v7

    if-nez v7, :cond_3

    .line 46
    :cond_1
    const-wide/16 v7, 0x0

    cmpl-double v7, v2, v7

    if-lez v7, :cond_2

    .line 47
    const/4 v6, 0x0

    .line 53
    :cond_2
    new-instance v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v7

    .line 43
    :cond_3
    const-wide/high16 v7, 0x3ff0

    sub-double/2addr v2, v7

    goto :goto_0

    .line 49
    .end local v0           #argumentOne:D
    .end local v2           #argumentTwo:D
    :catch_0
    move-exception v4

    .line 50
    .local v4, e:Ljava/lang/Exception;
    new-instance v7, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;

    const-string v8, "Two numeric arguments are required."

    invoke-direct {v7, v8, v4}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "digit"

    return-object v0
.end method
