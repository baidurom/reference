.class Lcom/android/phone/InCallScreenView$2;
.super Ljava/lang/Object;
.source "InCallScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreenView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/phone/InCallScreenView$2;->this$0:Lcom/android/phone/InCallScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$2;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v0}, Lcom/android/phone/InCallScreenView;->access$100(Lcom/android/phone/InCallScreenView;)Landroid/animation/TimeAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreenView$2;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v0}, Lcom/android/phone/InCallScreenView;->access$100(Lcom/android/phone/InCallScreenView;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$2;->this$0:Lcom/android/phone/InCallScreenView;

    #getter for: Lcom/android/phone/InCallScreenView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v0}, Lcom/android/phone/InCallScreenView;->access$100(Lcom/android/phone/InCallScreenView;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 221
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$2;->this$0:Lcom/android/phone/InCallScreenView;

    #setter for: Lcom/android/phone/InCallScreenView;->mRubberbanding:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreenView;->access$202(Lcom/android/phone/InCallScreenView;Z)Z

    .line 222
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$2;->this$0:Lcom/android/phone/InCallScreenView;

    #setter for: Lcom/android/phone/InCallScreenView;->mClosing:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreenView;->access$302(Lcom/android/phone/InCallScreenView;Z)Z

    .line 224
    :cond_0
    return-void
.end method
