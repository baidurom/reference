.class public Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
.super Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;
.source "SourceAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/SourceAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceKeyFrame"
.end annotation


# instance fields
.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->mSrc:Ljava/lang/String;

    .line 129
    return-void
.end method
