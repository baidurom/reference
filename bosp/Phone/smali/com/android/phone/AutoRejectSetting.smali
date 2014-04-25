.class public Lcom/android/phone/AutoRejectSetting;
.super Landroid/preference/PreferenceActivity;
.source "AutoRejectSetting.java"


# static fields
.field public static final AUTO_REJECT_SIP_CALL_KEY:Ljava/lang/String; = "sip_call_auto_reject_key"

.field public static final AUTO_REJECT_VIDEO_CALL_KEY:Ljava/lang/String; = "video_call_auto_reject_key"

.field public static final AUTO_REJECT_VOICE_CALL_KEY:Ljava/lang/String; = "voice_call_auto_reject_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AutoRejectSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 19
    const-string v0, "AutoRejectSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 26
    const-string v0, "onCreate!!"

    invoke-static {v0}, Lcom/android/phone/AutoRejectSetting;->log(Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRejectSetting;->addPreferencesFromResource(I)V

    .line 31
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/phone/AutoRejectSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sip_call_auto_reject_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/AutoRejectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "onPause()..."

    invoke-static {v0}, Lcom/android/phone/AutoRejectSetting;->log(Ljava/lang/String;)V

    .line 50
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "onResume()..."

    invoke-static {v0}, Lcom/android/phone/AutoRejectSetting;->log(Ljava/lang/String;)V

    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 44
    return-void
.end method
