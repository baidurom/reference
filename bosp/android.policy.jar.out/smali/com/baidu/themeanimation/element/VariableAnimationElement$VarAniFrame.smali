.class public Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
.super Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;
.source "VariableAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/VariableAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarAniFrame"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->mValue:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->mValue:Ljava/lang/String;

    .line 102
    return-void
.end method
