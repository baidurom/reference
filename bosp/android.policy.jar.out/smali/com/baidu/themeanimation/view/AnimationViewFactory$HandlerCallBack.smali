.class Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;
.super Ljava/lang/Object;
.source "AnimationViewFactory.java"

# interfaces
.implements Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/view/AnimationViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;


# direct methods
.method private constructor <init>(Lcom/baidu/themeanimation/view/AnimationViewFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/themeanimation/view/AnimationViewFactory;Lcom/baidu/themeanimation/view/AnimationViewFactory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;-><init>(Lcom/baidu/themeanimation/view/AnimationViewFactory;)V

    return-void
.end method


# virtual methods
.method public dispatchTimeTick(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/LockScreenElement;->dispatchTimeTick(Landroid/text/format/Time;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setCategory(I)V
    .locals 3
    .parameter "category"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    #getter for: Lcom/baidu/themeanimation/view/AnimationViewFactory;->mCategory:I
    invoke-static {v0}, Lcom/baidu/themeanimation/view/AnimationViewFactory;->access$100(Lcom/baidu/themeanimation/view/AnimationViewFactory;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    #setter for: Lcom/baidu/themeanimation/view/AnimationViewFactory;->mCategory:I
    invoke-static {v0, p1}, Lcom/baidu/themeanimation/view/AnimationViewFactory;->access$102(Lcom/baidu/themeanimation/view/AnimationViewFactory;I)I

    .line 127
    const-string v0, "category"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change category to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    #getter for: Lcom/baidu/themeanimation/view/AnimationViewFactory;->mCategory:I
    invoke-static {v2}, Lcom/baidu/themeanimation/view/AnimationViewFactory;->access$100(Lcom/baidu/themeanimation/view/AnimationViewFactory;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/LockScreenElement;->dispatchCategoryChange(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public unLock()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->startAnimations()V

    .line 116
    :cond_0
    return-void
.end method

.method public updateWallpaper()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;->this$0:Lcom/baidu/themeanimation/view/AnimationViewFactory;

    iget-object v0, v0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->updateWallpaper()V

    .line 122
    :cond_0
    return-void
.end method
