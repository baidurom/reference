.class public Lcom/mediatek/phone/ext/SettingsExtension;
.super Ljava/lang/Object;
.source "SettingsExtension.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeFeatureForOperator(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefSet"
    .parameter "mPreferredNetworkMode"
    .parameter "mButtonPreferencedNetworkMode"
    .parameter "mPreference3GSwitch"
    .parameter "mButtonPreferredGSMOnly"

    .prologue
    .line 68
    invoke-virtual {p1, p5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    return-void
.end method

.method public customizePLMNFeature(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefSet"
    .parameter "mPLMNPreference"

    .prologue
    .line 77
    return-void
.end method

.method public dataEnableReminder(Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceActivity;)Z
    .locals 1
    .parameter "dataEnable"
    .parameter "activity"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public disableDataRoaming(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "buttonDataRoam"
    .parameter "isEnabled"

    .prologue
    .line 146
    return-void
.end method

.method public getRoamingSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "res"

    .prologue
    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, summary:Ljava/lang/String;
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default setRoamingSummary with summary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 127
    const-string v0, "NetworkSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public removeNMMode(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefsc"
    .parameter "buttonPreferredNetworkMode"
    .parameter "buttonPreferredGSMOnly"
    .parameter "buttonPreferredNetworkModeEx"

    .prologue
    .line 88
    return-void
.end method

.method public removeNMOp(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "prefsc"
    .parameter "carrierSelPref"
    .parameter "isShowPlmn"

    .prologue
    .line 97
    return-void
.end method

.method public removeNMOpFor3GSwitch(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefsc"
    .parameter "networkMode"

    .prologue
    .line 105
    return-void
.end method

.method public removeNMOpForMultiSim(Lcom/android/internal/telephony/Phone;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter "phone"
    .parameter
    .parameter "targetClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    return-void
.end method

.method public showWarningDlg(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "res"

    .prologue
    .line 136
    const-string v0, "default to do nothing"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/ext/SettingsExtension;->log(Ljava/lang/String;)V

    .line 137
    return-void
.end method
