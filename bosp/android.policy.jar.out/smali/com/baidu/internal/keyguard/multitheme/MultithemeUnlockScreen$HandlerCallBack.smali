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
    .line 229
    iput-object p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;-><init>(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public dispatchTimeTick(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/LockScreenElement;->dispatchTimeTick(Landroid/text/format/Time;)V

    .line 254
    :cond_0
    return-void
.end method

.method public setCategory(I)V
    .locals 3
    .parameter "category"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    #getter for: Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->access$200(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    #setter for: Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->access$202(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;I)I

    .line 245
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

    .line 246
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/LockScreenElement;->dispatchCategoryChange(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public unLock()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->reset()V

    .line 233
    invoke-static {}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->access$100()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 234
    return-void
.end method

.method public updateWallpaper()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;->this$0:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->updateWallpaper()V

    .line 240
    :cond_0
    return-void
.end method
