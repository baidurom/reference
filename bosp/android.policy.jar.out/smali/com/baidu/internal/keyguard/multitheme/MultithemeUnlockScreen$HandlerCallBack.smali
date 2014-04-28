.class Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;
.super Ljava/lang/Object;
.source "MultithemeUnlockScreen.java"

# interfaces
.implements Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;-><init>(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public dispatchTimeTick(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/LockScreenElement;->dispatchTimeTick(Landroid/text/format/Time;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setCategory(I)V
    .locals 3
    .parameter "category"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    #getter for: Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->access$200(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    #setter for: Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->access$202(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;I)I

    .line 242
    const-string v0, "category"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change category to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    #getter for: Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I
    invoke-static {v2}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->access$200(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/LockScreenElement;->dispatchCategoryChange(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public unLock()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    #getter for: Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->access$100(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 231
    return-void
.end method

.method public updateWallpaper()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->updateWallpaper()V

    .line 237
    :cond_0
    return-void
.end method
