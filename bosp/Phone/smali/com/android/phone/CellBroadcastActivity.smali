.class public Lcom/android/phone/CellBroadcastActivity;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CellBroadcastActivity.java"


# static fields
.field private static final BUTTON_CB_CHECKBOX_KEY:Ljava/lang/String; = "enable_cellBroadcast"

.field private static final BUTTON_CB_SETTINGS_KEY:Ljava/lang/String; = "cbsettings"


# instance fields
.field cbCheckBox:Lcom/android/phone/CellBroadcastCheckBox;

.field cbSetting:Landroid/preference/Preference;

.field mSimId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CellBroadcastActivity;->mSimId:I

    .line 18
    iput-object v1, p0, Lcom/android/phone/CellBroadcastActivity;->cbCheckBox:Lcom/android/phone/CellBroadcastCheckBox;

    .line 19
    iput-object v1, p0, Lcom/android/phone/CellBroadcastActivity;->cbSetting:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastActivity;->addPreferencesFromResource(I)V

    .line 25
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CellBroadcastActivity;->mSimId:I

    .line 27
    const-string v0, "enable_cellBroadcast"

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CellBroadcastCheckBox;

    iput-object v0, p0, Lcom/android/phone/CellBroadcastActivity;->cbCheckBox:Lcom/android/phone/CellBroadcastCheckBox;

    .line 28
    const-string v0, "cbsettings"

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CellBroadcastActivity;->cbSetting:Landroid/preference/Preference;

    .line 29
    iget-object v1, p0, Lcom/android/phone/CellBroadcastActivity;->cbCheckBox:Lcom/android/phone/CellBroadcastCheckBox;

    iget-object v0, p0, Lcom/android/phone/CellBroadcastActivity;->cbCheckBox:Lcom/android/phone/CellBroadcastCheckBox;

    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00d7

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/CellBroadcastCheckBox;->setSummary(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CellBroadcastActivity;->cbCheckBox:Lcom/android/phone/CellBroadcastCheckBox;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/phone/CellBroadcastActivity;->cbCheckBox:Lcom/android/phone/CellBroadcastCheckBox;

    iget v1, p0, Lcom/android/phone/CellBroadcastActivity;->mSimId:I

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/phone/CellBroadcastCheckBox;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 39
    :cond_1
    return-void

    .line 29
    :cond_2
    const v0, 0x7f0b00d8

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/phone/CellBroadcastActivity;->cbSetting:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CellBroadcastSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    iget v2, p0, Lcom/android/phone/CellBroadcastActivity;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    const/4 v1, 0x1

    .line 51
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
