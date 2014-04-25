.class Lcom/android/phone/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallFeaturesSettingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceMailSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/VoiceMailSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/android/phone/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;->this$0:Lcom/android/phone/VoiceMailSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VoiceMailSetting;Lcom/android/phone/VoiceMailSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2026
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;-><init>(Lcom/android/phone/VoiceMailSetting;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2029
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2030
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mode"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 2034
    :cond_1
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;->this$0:Lcom/android/phone/VoiceMailSetting;

    invoke-virtual {v1}, Lcom/android/phone/VoiceMailSetting;->finish()V

    .line 2036
    :cond_2
    return-void
.end method
