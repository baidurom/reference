.class Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldViewMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private final mHoldView:Lcom/android/internal/widget/multiwaveview/HoldView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/HoldView;)V
    .locals 0
    .parameter
    .parameter "holdView"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;->mHoldView:Lcom/android/internal/widget/multiwaveview/HoldView;

    .line 281
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;->mHoldView:Lcom/android/internal/widget/multiwaveview/HoldView;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 288
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 306
    if-eqz p2, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 309
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 292
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 295
    const-string v0, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger, whichHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 297
    const-string v0, "LockScreen"

    const-string v1, "onTrigger, requestUnlockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 300
    :cond_0
    return-void
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;->mHoldView:Lcom/android/internal/widget/multiwaveview/HoldView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/HoldView;->reset(Z)V

    .line 317
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method
