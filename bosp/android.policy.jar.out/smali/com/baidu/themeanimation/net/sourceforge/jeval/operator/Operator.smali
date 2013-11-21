.class public interface abstract Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# virtual methods
.method public abstract evaluate(D)D
.end method

.method public abstract evaluate(DD)D
.end method

.method public abstract evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/themeanimation/net/sourceforge/jeval/EvaluationException;
        }
    .end annotation
.end method

.method public abstract getLength()I
.end method

.method public abstract getPrecedence()I
.end method

.method public abstract getSymbol()Ljava/lang/String;
.end method

.method public abstract isUnary()Z
.end method
