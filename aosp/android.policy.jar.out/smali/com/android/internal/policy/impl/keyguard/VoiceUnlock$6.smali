.class Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;
.super Ljava/lang/Object;
.source "VoiceUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;
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
    .line 567
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$102(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mPkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$300(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->registerVoiceCommand(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$700(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const-string v1, "onServiceConnected   "

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->startRecognize()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$800(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V

    .line 575
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const-string v1, "onServiceDisconnected   "

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$200(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->isRegistered:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$902(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Z)Z

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$6;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$102(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 580
    return-void
.end method
