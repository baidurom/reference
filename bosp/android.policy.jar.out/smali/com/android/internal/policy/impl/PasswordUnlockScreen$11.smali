.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 732
    const-string v0, "PasswordUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsVoicePrint:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    if-nez p1, :cond_1

    .line 735
    const-string v0, "PasswordUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLock:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v0, "PasswordUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVoicePrintView.getVisibility() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/yi/internal/widget/VoiceprintUnlockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/yi/internal/widget/VoiceprintUnlockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsLock:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V

    goto :goto_0
.end method
