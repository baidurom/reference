.class Lcom/android/phone/BaiduInCallTouchUi$5;
.super Ljava/lang/Object;
.source "BaiduInCallTouchUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BaiduInCallTouchUi;->hideIncomingCallWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BaiduInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/BaiduInCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/android/phone/BaiduInCallTouchUi$5;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 1163
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$5;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    #getter for: Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;
    invoke-static {v0}, Lcom/android/phone/BaiduInCallTouchUi;->access$300(Lcom/android/phone/BaiduInCallTouchUi;)Lcom/baidu/multiwaveview/MultiWaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 1164
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$5;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    #getter for: Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;
    invoke-static {v0}, Lcom/android/phone/BaiduInCallTouchUi;->access$300(Lcom/android/phone/BaiduInCallTouchUi;)Lcom/baidu/multiwaveview/MultiWaveView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$5;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    #getter for: Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/BaiduInCallTouchUi;->access$400(Lcom/android/phone/BaiduInCallTouchUi;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1159
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1155
    return-void
.end method
