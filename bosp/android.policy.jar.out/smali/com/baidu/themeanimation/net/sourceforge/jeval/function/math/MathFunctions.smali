.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;
.super Ljava/lang/Object;
.source "MathFunctions.java"

# interfaces
.implements Lcom/baidu/themeanimation/net/sourceforge/jeval/function/FunctionGroup;


# instance fields
.field private functions:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Abs;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Abs;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Acos;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Acos;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Asin;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Asin;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Atan;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Atan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Atan2;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Atan2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Ceil;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Ceil;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Cos;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Cos;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Exp;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Exp;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Floor;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Floor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/IEEEremainder;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/IEEEremainder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Log;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Log;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Max;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Max;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Min;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Min;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Pow;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Pow;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Random;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Random;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Rint;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Rint;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Round;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Round;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Sin;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Sin;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Sqrt;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Sqrt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Tan;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Tan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/ToDegrees;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/ToDegrees;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/ToRadians;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/ToRadians;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Eq;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Eq;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Ne;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Ne;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Gt;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Gt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Ge;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Ge;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Lt;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Lt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Le;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Le;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Digit;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Digit;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/IsNull;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/IsNull;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Not;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Not;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Paras;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Paras;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Len;

    invoke-direct {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/Len;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public getFunctions()Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "numberFunctions"

    return-object v0
.end method

.method public load(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;)V
    .locals 2
    .parameter "evaluator"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    .local v0, functionIterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;

    invoke-virtual {p1, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putFunction(Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public unload(Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;)V
    .locals 2
    .parameter "evaluator"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/math/MathFunctions;->functions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    .local v0, functionIterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;

    invoke-interface {v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/function/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->removeFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method
