.class public Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;
.super Landroid/preference/PreferenceActivity;
.source "SingleSimCallSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SingleSimCallSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoRecordSetting"
.end annotation


# instance fields
.field private mAutoRecordSwitcher:Landroid/preference/SwitchPreference;

.field private mAutoRecordWhiteList:Landroid/preference/PreferenceScreen;

.field private mRecordForWhiteSwitcher:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 727
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 728
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->addPreferencesFromResource(I)V

    .line 730
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->mAutoRecordSwitcher:Landroid/preference/SwitchPreference;

    .line 731
    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->mAutoRecordSwitcher:Landroid/preference/SwitchPreference;

    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->isAutoRecordEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 733
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->mRecordForWhiteSwitcher:Landroid/preference/SwitchPreference;

    .line 734
    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->mRecordForWhiteSwitcher:Landroid/preference/SwitchPreference;

    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->isRecordNumberEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 736
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->mAutoRecordWhiteList:Landroid/preference/PreferenceScreen;

    .line 738
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 739
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 741
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 743
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 754
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 755
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 757
    const/4 v1, 0x1

    .line 759
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 747
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 749
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;->mAutoRecordWhiteList:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/SingleSimCallSetting;->updateWhiteListSettingSummary(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V

    .line 750
    return-void
.end method
