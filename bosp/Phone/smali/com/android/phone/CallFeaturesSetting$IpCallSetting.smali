.class public Lcom/android/phone/CallFeaturesSetting$IpCallSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpCallSetting"
.end annotation


# static fields
.field private static final AUTO_IP_CALL_SP:Ljava/lang/String; = "auto_ip_call_sp"

.field private static IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String; = null

.field private static IP_CALL_WHITE_LIST:Ljava/lang/String; = null

.field private static final IP_PREFIX_LIST_DIALOG_FIRST:I = 0x1

.field private static IP_PREFIX_LIST_KEY:Ljava/lang/String;

.field private static IP_SELF_LOCATION_KEY:Ljava/lang/String;

.field public static IP_SWITCH_CHECKED_FIRST_TIME:Z

.field private static mIpSwitcher:Landroid/preference/SwitchPreference;


# instance fields
.field private entries:I

.field mHanlder:Landroid/os/Handler;

.field private mIpCallAutoEnable:Landroid/preference/SwitchPreference;

.field private mIpCallWhiteList:Landroid/preference/PreferenceScreen;

.field private mIpPrefixList:Landroid/preference/ListPreference;

.field private mIpSelfLocation:Landroid/preference/PreferenceScreen;

.field private mSubscriberId:Ljava/lang/String;

.field private values:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2149
    const-string v0, "ip_prefix_list_key"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_PREFIX_LIST_KEY:Ljava/lang/String;

    .line 2150
    const-string v0, "ip_call_self_location_city"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SELF_LOCATION_KEY:Ljava/lang/String;

    .line 2151
    const-string v0, "ip_call_auto_enable"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String;

    .line 2152
    const-string v0, "ip_call_white_list"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_WHITE_LIST:Ljava/lang/String;

    .line 2163
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2145
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 2170
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2145
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2145
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method private customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 6
    .parameter "context"
    .parameter "view"
    .parameter "needQueryLocation"

    .prologue
    const/4 v2, 0x0

    .line 2355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0283

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0285

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/view/View;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0284

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v3, 0x14

    move-object v1, p2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2394
    return-void
.end method

.method private getAnEditText()Landroid/widget/EditText;
    .locals 5

    .prologue
    .line 2452
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2453
    .local v0, customIpPrefix:Landroid/widget/EditText;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 2454
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2455
    const-string v3, "auto_ip_call_sp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2456
    .local v2, restore:Landroid/content/SharedPreferences;
    const-string v3, "customed_ip_prefix"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2457
    .local v1, customed:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2458
    return-object v0
.end method

.method public static ipCallNotSetYet(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2465
    const-string v1, "auto_ip_call_sp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2466
    .local v0, ipSwitchFirstCheck:Landroid/content/SharedPreferences;
    const-string v1, "first_check"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isIpCallSwitchCheckedNow(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 2473
    const/4 v1, 0x0

    .line 2475
    .local v1, isChecked:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ip_call_enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2479
    :goto_0
    return v1

    .line 2475
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2476
    :catch_0
    move-exception v0

    .line 2477
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showIpPrefixListDialogFirstTime(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 2412
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2415
    .local v1, ipPrefix:[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const v3, 0x7f0c0286

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2416
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c027c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0284

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$4;

    invoke-direct {v4, p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2446
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2447
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2202
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2203
    const v7, 0x7f05000e

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->addPreferencesFromResource(I)V

    .line 2205
    const-string v7, "button_ip_enable"

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    sput-object v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    .line 2207
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_PREFIX_LIST_KEY:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    .line 2209
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SELF_LOCATION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    .line 2211
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    .line 2213
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    .line 2215
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2216
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2218
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2222
    :cond_0
    const-string v7, "auto_ip_call_sp"

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2223
    .local v1, ipSwitchFirstCheck:Landroid/content/SharedPreferences;
    const-string v7, "first_check"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    .line 2226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2227
    .local v6, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 2228
    .local v5, operatorNumeric:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    .line 2229
    const-string v7, "46001"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "46006"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    move v4, v9

    .line 2230
    .local v4, isUnicom:Z
    :goto_0
    const-string v7, "46003"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "46005"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    move v3, v9

    .line 2231
    .local v3, isTelecom:Z
    :goto_1
    const-string v7, "46000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "46002"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "46007"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    move v2, v9

    .line 2233
    .local v2, isChinaMobile:Z
    :goto_2
    const v7, 0x7f06001a

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 2234
    const v7, 0x7f06001b

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    .line 2235
    if-eqz v4, :cond_8

    .line 2236
    const v7, 0x7f060014

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 2237
    const v7, 0x7f060015

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    .line 2246
    :cond_4
    :goto_3
    return-void

    .end local v2           #isChinaMobile:Z
    .end local v3           #isTelecom:Z
    .end local v4           #isUnicom:Z
    :cond_5
    move v4, v8

    .line 2229
    goto :goto_0

    .restart local v4       #isUnicom:Z
    :cond_6
    move v3, v8

    .line 2230
    goto :goto_1

    .restart local v3       #isTelecom:Z
    :cond_7
    move v2, v8

    .line 2231
    goto :goto_2

    .line 2238
    .restart local v2       #isChinaMobile:Z
    :cond_8
    if-eqz v3, :cond_9

    .line 2239
    const v7, 0x7f060016

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 2240
    const v7, 0x7f060017

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    goto :goto_3

    .line 2241
    :cond_9
    if-eqz v2, :cond_4

    .line 2242
    const v7, 0x7f060018

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 2243
    const v7, 0x7f060019

    iput v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2399
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2400
    .local v0, itemId:I
    const v1, #id@home#t

    if-ne v0, v1, :cond_0

    .line 2401
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 2402
    const/4 v1, 0x1

    .line 2404
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2296
    sget-object v4, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    .line 2297
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2299
    .local v1, ipEnable:Z
    if-eqz v1, :cond_0

    sget-boolean v4, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    if-eqz v4, :cond_0

    .line 2304
    sput-boolean v6, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    .line 2306
    const-string v4, "auto_ip_call_sp"

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2307
    .local v3, save:Landroid/content/SharedPreferences$Editor;
    const-string v4, "first_check"

    sget-boolean v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2308
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2314
    invoke-direct {p0, p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;)V

    .line 2316
    .end local v3           #save:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ip_call_enabled"

    if-eqz v1, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2317
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_1

    move v6, v5

    :cond_1
    int-to-short v6, v6

    invoke-static {v4, v6}, Lcom/android/phone/UBCUtils;->submitIPSetting(Landroid/content/Context;S)V

    .line 2340
    .end local v1           #ipEnable:Z
    :goto_1
    return v5

    .restart local v1       #ipEnable:Z
    :cond_2
    move v4, v6

    .line 2316
    goto :goto_0

    .line 2319
    .end local v1           #ipEnable:Z
    .restart local p2
    :cond_3
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 2320
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2321
    .local v2, ipPrefix:Ljava/lang/String;
    const-string v4, "custom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2322
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "ip_call_prefix"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2325
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2326
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2328
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    const v6, 0x7f0c027c

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    .line 2332
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {p0, p0, v4, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_1

    .line 2335
    .end local v2           #ipPrefix:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_8

    .line 2336
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2337
    .local v0, ipCallAutoEnabled:Z
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "ip_call_auto_enable"

    if-eqz v0, :cond_7

    move v6, v5

    :cond_7
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0           #ipCallAutoEnabled:Z
    .restart local p2
    :cond_8
    move v5, v6

    .line 2340
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 2345
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 2346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/QueryLocation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2347
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->startActivity(Landroid/content/Intent;)V

    .line 2350
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2250
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 2252
    sget-object v4, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 2253
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "ip_call_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2255
    .local v1, ipEnable:I
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-ne v1, v5, :cond_6

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2257
    sget-object v4, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2259
    .end local v1           #ipEnable:I
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    .line 2260
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "ip_call_prefix"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2262
    .local v2, ipPrefix:Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 2263
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2268
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 2269
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 2271
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2273
    .end local v2           #ipPrefix:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 2274
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "ip_call_self_location"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2276
    .local v3, selfLocation:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2277
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2280
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2282
    .end local v3           #selfLocation:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    .line 2283
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "ip_call_auto_enable"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2285
    .local v0, ipCallAutoEnable:I
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-ne v0, v5, :cond_8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2287
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2289
    .end local v0           #ipCallAutoEnable:I
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5

    .line 2290
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    invoke-static {p0, v4, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->updateWhiteListSettingSummary(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V

    .line 2292
    :cond_5
    return-void

    .restart local v1       #ipEnable:I
    :cond_6
    move v4, v6

    .line 2255
    goto :goto_0

    .line 2265
    .end local v1           #ipEnable:I
    .restart local v2       #ipPrefix:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/ListPreference;

    const v7, 0x7f0c027c

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    .end local v2           #ipPrefix:Ljava/lang/String;
    .restart local v0       #ipCallAutoEnable:I
    :cond_8
    move v5, v6

    .line 2285
    goto :goto_2
.end method
