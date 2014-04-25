.class public Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;
.super Landroid/preference/PreferenceActivity;
.source "MultipleSimCallSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MultipleSimCallSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoReDialSetting"
.end annotation


# static fields
.field static AUTO_REDIAL_ENABLE_KEY:Ljava/lang/String;

.field static AUTO_REDIAL_LIST:Ljava/lang/String;


# instance fields
.field private mAutoRedialList:Landroid/preference/PreferenceScreen;

.field private mAutoRedialSwitcher:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 711
    const-string v0, "button_auto_redial_enable"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->AUTO_REDIAL_ENABLE_KEY:Ljava/lang/String;

    .line 712
    const-string v0, "auto_redial_list"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->AUTO_REDIAL_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 717
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 718
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->addPreferencesFromResource(I)V

    .line 720
    sget-object v1, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->AUTO_REDIAL_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialSwitcher:Landroid/preference/SwitchPreference;

    .line 721
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialSwitcher:Landroid/preference/SwitchPreference;

    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->isAutoRecordEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 722
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialSwitcher:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 724
    sget-object v1, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->AUTO_REDIAL_LIST:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialList:Landroid/preference/PreferenceScreen;

    .line 726
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 727
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 728
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 730
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 742
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 743
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->finish()V

    .line 746
    const/4 v1, 0x1

    .line 748
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 766
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialSwitcher:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    .line 767
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 768
    .local v0, enable:Z
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_redial"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 771
    .end local v0           #enable:Z
    :cond_0
    return v2

    .line 768
    .restart local v0       #enable:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 755
    iget-object v2, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialSwitcher:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialSwitcher:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 757
    .local v0, enable:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_redial"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 761
    .end local v0           #enable:I
    :goto_1
    return v1

    .line 756
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 761
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 734
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 735
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_redial"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 737
    .local v0, enable:I
    iget-object v3, p0, Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;->mAutoRedialSwitcher:Landroid/preference/SwitchPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 738
    return-void

    :cond_0
    move v1, v2

    .line 737
    goto :goto_0
.end method
