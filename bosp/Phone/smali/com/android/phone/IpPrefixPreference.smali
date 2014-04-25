.class public Lcom/android/phone/IpPrefixPreference;
.super Landroid/preference/PreferenceActivity;
.source "IpPrefixPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final IP_PREFIX_NUMBER_EDIT_KEY:Ljava/lang/String; = "button_ip_prefix_edit_key"


# instance fields
.field private initTitle:Ljava/lang/String;

.field private mButtonIpPrefix:Landroid/preference/EditTextPreference;

.field private mSlot:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/IpPrefixPreference;->mSlot:I

    .line 25
    iput-object v1, p0, Lcom/android/phone/IpPrefixPreference;->initTitle:Ljava/lang/String;

    return-void
.end method

.method private getIpPrefix(I)Ljava/lang/String;
    .locals 5
    .parameter "slot"

    .prologue
    .line 77
    const-string v1, "ipprefix"

    .line 78
    .local v1, key:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget v2, p0, Lcom/android/phone/IpPrefixPreference;->mSlot:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 80
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IpPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private saveIpPrefix(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 64
    const-string v1, "ipprefix"

    .line 65
    .local v1, key:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget v2, p0, Lcom/android/phone/IpPrefixPreference;->mSlot:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 67
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IpPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    const-string v2, "IpPrefixPreference"

    const-string v3, "Store ip prefix error!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 99
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/android/phone/IpPrefixPreference;->addPreferencesFromResource(I)V

    .line 30
    const-string v0, "button_ip_prefix_edit_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/IpPrefixPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    .line 31
    iget-object v0, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/phone/IpPrefixPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/IpPrefixPreference;->mSlot:I

    .line 35
    invoke-virtual {p0}, Lcom/android/phone/IpPrefixPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IpPrefixPreference;->initTitle:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/phone/IpPrefixPreference;->initTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/phone/IpPrefixPreference;->initTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/IpPrefixPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 56
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b03dc

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 59
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IpPrefixPreference;->saveIpPrefix(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 43
    iget v1, p0, Lcom/android/phone/IpPrefixPreference;->mSlot:I

    invoke-direct {p0, v1}, Lcom/android/phone/IpPrefixPreference;->getIpPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, preFix:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const v2, 0x7f0b03dc

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 49
    iget-object v1, p0, Lcom/android/phone/IpPrefixPreference;->mButtonIpPrefix:Landroid/preference/EditTextPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 95
    return-void
.end method
