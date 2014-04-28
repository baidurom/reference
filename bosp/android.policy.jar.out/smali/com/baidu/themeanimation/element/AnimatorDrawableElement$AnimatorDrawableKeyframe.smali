.class public Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;
.super Ljava/lang/Object;
.source "AnimatorDrawableElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/AnimatorDrawableElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorDrawableKeyframe"
.end annotation


# instance fields
.field Fraction:I

.field src:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/AnimatorDrawableElement;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "_src"
    .parameter "_Fraction"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->this$0:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->src:Ljava/lang/String;

    .line 122
    iput p3, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->Fraction:I

    .line 123
    return-void
.end method


# virtual methods
.method public getFraction()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->Fraction:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setFraction(I)V
    .locals 0
    .parameter "Fraction"

    .prologue
    .line 138
    iput p1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->Fraction:I

    .line 139
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->src:Ljava/lang/String;

    .line 131
    return-void
.end method
