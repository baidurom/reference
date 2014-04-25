.class public Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;
.super Landroid/preference/PreferenceActivity;
.source "MultipleSimCallSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MultipleSimCallSetting;
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
    .line 657
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 666
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 667
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->addPreferencesFromResource(I)V

    .line 669
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->mAutoRecordSwitcher:Landroid/preference/SwitchPreference;

    .line 670
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->mAutoRecordSwitcher:Landroid/preference/SwitchPreference;

    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->isAutoRecordEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 672
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->mRecordForWhiteSwitcher:Landroid/preference/SwitchPreference;

    .line 673
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->mRecordForWhiteSwitcher:Landroid/preference/SwitchPreference;

    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->isRecordNumberEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 675
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->mAutoRecordWhiteList:Landroid/preference/PreferenceScreen;

    .line 677
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 678
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 680
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 682
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 693
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 694
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->finish()V

    .line 697
    const/4 v1, 0x1

    .line 699
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
    .line 686
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 688
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;->mAutoRecordWhiteList:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/MultipleSimCallSetting;->updateWhiteListSettingSummary(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V

    .line 689
    return-void
.end method
