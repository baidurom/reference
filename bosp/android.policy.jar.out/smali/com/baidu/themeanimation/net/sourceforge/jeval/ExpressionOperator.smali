.class public Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;
.super Ljava/lang/Object;
.source "ExpressionOperator.java"


# instance fields
.field private operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

.field private unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;)V
    .locals 1
    .parameter "operator"
    .parameter "unaryOperator"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 30
    iput-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 42
    iput-object p1, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 43
    iput-object p2, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    .line 44
    return-void
.end method


# virtual methods
.method public getOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->operator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    return-object v0
.end method

.method public getUnaryOperator()Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/themeanimation/net/sourceforge/jeval/ExpressionOperator;->unaryOperator:Lcom/baidu/themeanimation/net/sourceforge/jeval/operator/Operator;

    return-object v0
.end method
