.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/WaveView$OnTriggerListener;
.implements Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveViewMethods"
.end annotation


# instance fields
.field private final mWaveView:Lcom/android/internal/widget/WaveView;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/android/internal/widget/WaveView;)V
    .locals 0
    .parameter
    .parameter "waveView"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    .line 155
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 168
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 171
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 158
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->requestUnlockScreen()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V

    .line 161
    :cond_0
    return-void
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/WaveView;->reset()V

    .line 181
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
