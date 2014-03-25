.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Random;
.super Ljava/lang/Object;
.source "Random.java"

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
    .locals 4
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 60
    .local v0, result:Ljava/lang/Double;
    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "random"

    return-object v0
.end method
