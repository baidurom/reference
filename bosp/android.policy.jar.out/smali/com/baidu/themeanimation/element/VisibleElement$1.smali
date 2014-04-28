.class Lcom/baidu/themeanimation/element/VisibleElement$1;
.super Ljava/lang/Object;
.source "VisibleElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/VisibleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/element/VisibleElement;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/element/VisibleElement;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VisibleElement$1;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement$1;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    #getter for: Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->access$100(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement$1;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement$1;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    #getter for: Lcom/baidu/themeanimation/element/VisibleElement;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->access$100(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 339
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
