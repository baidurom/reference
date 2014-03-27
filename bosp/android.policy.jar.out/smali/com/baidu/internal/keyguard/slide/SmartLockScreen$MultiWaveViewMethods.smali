.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWaveViewMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private final mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 4
    .parameter
    .parameter "multiWaveView"

    .prologue
    const/4 v1, 0x1

    .line 192
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 194
    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$600(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 196
    .local v0, cameraDisabled:Z
    if-eqz v0, :cond_0

    .line 197
    const-string v2, "SmartLockScreen"

    const-string v3, "Camera disabled by Device Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetResourceId()I

    move-result v2

    const v3, #array@lockscreen_targets_with_camera#t

    if-eq v2, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 221
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 252
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 225
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "target"

    .prologue
    .line 228
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 231
    :cond_3
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-nez v1, :cond_4

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$700(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 238
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->toggleRingMode()V
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$300(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V

    .line 239
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$800(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 240
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 264
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    .line 260
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 209
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, #array@lockscreen_targets_when_silent#t

    .line 216
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 217
    return-void

    .line 211
    .end local v0           #resId:I
    :cond_0
    const v0, #array@lockscreen_targets_when_soundon#t

    goto :goto_0

    .line 214
    :cond_1
    const v0, #array@lockscreen_targets_with_camera#t

    .restart local v0       #resId:I
    goto :goto_0
.end method
