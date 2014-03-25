.class Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const-string v1, "sendCommand RECOGNIZE_INTENSITY"

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mPkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$300(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$400(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$3;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mIntensityHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$500(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method
