.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSliderHandleAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const v2, #id@sliding_layout#t

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 1239
    .local v0, slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1242
    :cond_0
    return-void
.end method


# virtual methods
.method public onCameraLaunchedSuccessfully()V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->scrollLeft()V

    .line 1227
    :cond_0
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->setSliderHandleAlpha(F)V

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1229
    return-void
.end method

.method public onCameraLaunchedUnsuccessfully()V
    .locals 1

    .prologue
    .line 1233
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->setSliderHandleAlpha(F)V

    .line 1234
    return-void
.end method

.method public onLaunchingCamera()V
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->setSliderHandleAlpha(F)V

    .line 1220
    return-void
.end method
