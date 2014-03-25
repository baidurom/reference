.class Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;
.super Ljava/lang/Object;
.source "PowerOffAlarmView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    invoke-static {p2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$502(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 509
    const-string v0, "powerOffAlarm"

    .line 510
    .local v0, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->registerVoiceCommand(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$600(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$700(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 513
    const-string v1, "PowerOffAlarm"

    const-string v2, "onServiceConnected   "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 516
    const-string v0, "PowerOffAlarm"

    const-string v1, "onServiceDisconnected   "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->isRegistered:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$802(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Z)Z

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$502(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 519
    return-void
.end method
