.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
.implements Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabMethods"
.end annotation


# instance fields
.field private final mSlidingTab:Lcom/android/internal/widget/SlidingTab;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter
    .parameter "slidingTab"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    .line 94
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 124
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->isSilentMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$400(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v1

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$002(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Z)Z

    .line 126
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, #string@lockscreen_sound_on_label#t

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 132
    :cond_0
    if-eqz p2, :cond_1

    .line 133
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 135
    :cond_1
    return-void

    .line 126
    :cond_2
    const v0, #string@lockscreen_sound_off_label#t

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 114
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->toggleRingMode()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$300(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 143
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 97
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$100(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 100
    .local v0, vibe:Z
    :goto_0
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, #drawable@ic_jog_dial_vibrate_on#t

    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, #drawable@jog_tab_target_yellow#t

    :goto_2
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, #drawable@jog_tab_bar_right_sound_on#t

    :goto_3
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, #drawable@jog_tab_right_sound_on#t

    :goto_4
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 110
    return-void

    .line 97
    .end local v0           #vibe:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    .restart local v0       #vibe:Z
    :cond_1
    const v1, #drawable@ic_jog_dial_sound_off#t

    goto :goto_1

    :cond_2
    const v1, #drawable@ic_jog_dial_sound_on#t

    goto :goto_1

    :cond_3
    const v2, #drawable@jog_tab_target_gray#t

    goto :goto_2

    :cond_4
    const v3, #drawable@jog_tab_bar_right_sound_off#t

    goto :goto_3

    :cond_5
    const v4, #drawable@jog_tab_right_sound_off#t

    goto :goto_4
.end method
