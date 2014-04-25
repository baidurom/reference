.class public Lcom/android/phone/SingleSimCallSetting$IpCallSetting;
.super Landroid/preference/PreferenceActivity;
.source "SingleSimCallSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SingleSimCallSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpCallSetting"
.end annotation


# static fields
.field private static final AUTO_IP_CALL_SP:Ljava/lang/String; = "auto_ip_call_sp"

.field private static final CALLLOCATION_By_PHONE_NUMBER_CONTENT_URL:Ljava/lang/String; = "content://com.android.Contacts.CallLocation/calllocation"

.field private static IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String; = null

.field private static final IP_CALL_ENABLED:Ljava/lang/String; = "ipenabled"

.field private static final IP_CALL_PREFIX:Ljava/lang/String; = "ipprefix"

.field private static IP_CALL_WHITE_LIST:Ljava/lang/String; = null

.field private static final IP_FIRST_ENABLE:I = 0x1

.field private static final IP_FIRST_ENABLE_DONE:I = 0x0

.field private static final IP_PREFIX_LIST_DIALOG_FIRST:I = 0x1

.field private static IP_PREFIX_LIST_KEY:Ljava/lang/String;

.field private static IP_SELF_LOCATION_KEY:Ljava/lang/String;

.field public static IP_SWITCH_CHECKED_FIRST_TIME:Z


# instance fields
.field private entries:I

.field mHanlder:Landroid/os/Handler;

.field private mIpCallAutoEnable:Landroid/preference/SwitchPreference;

.field private mIpCallWhiteList:Landroid/preference/PreferenceScreen;

.field private mIpPrefixList:Landroid/preference/PreferenceScreen;

.field private mIpSelfLocation:Landroid/preference/PreferenceScreen;

.field private mIpSwitcher:Landroid/preference/SwitchPreference;

.field mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

.field private mSubscriberId:Ljava/lang/String;

.field private ugly_flag:Z

.field private values:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    const-string v0, "ip_prefix_list_key"

    sput-object v0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_PREFIX_LIST_KEY:Ljava/lang/String;

    .line 298
    const-string v0, "ip_call_self_location_city"

    sput-object v0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_SELF_LOCATION_KEY:Ljava/lang/String;

    .line 299
    const-string v0, "ip_call_auto_enable"

    sput-object v0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String;

    .line 300
    const-string v0, "ip_call_white_list"

    sput-object v0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_CALL_WHITE_LIST:Ljava/lang/String;

    .line 314
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 325
    new-instance v0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$1;-><init>(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)V

    iput-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    iget v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->values:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method private customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 6
    .parameter "context"
    .parameter "view"
    .parameter "needQueryLocation"

    .prologue
    const/4 v2, 0x0

    .line 535
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02e2

    new-instance v3, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$3;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$3;-><init>(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;Landroid/view/View;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02e1

    new-instance v3, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$2;-><init>(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)V

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

    .line 573
    return-void
.end method

.method private getAnEditText()Landroid/widget/EditText;
    .locals 5

    .prologue
    .line 645
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 646
    .local v0, customIpPrefix:Landroid/widget/EditText;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 647
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 648
    const-string v3, "auto_ip_call_sp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 649
    .local v2, restore:Landroid/content/SharedPreferences;
    const-string v3, "customed_ip_prefix"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, customed:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 651
    return-object v0
.end method

.method public static ipCallNotSetYet(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 658
    const-string v1, "auto_ip_call_sp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
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
    .line 666
    const/4 v1, 0x0

    .line 668
    .local v1, isChecked:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ipenabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 672
    :goto_0
    return v1

    .line 668
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "firstSet"

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->values:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, ipPrefix:[Ljava/lang/String;
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    const v9, 0x7f0b02e3

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 595
    const/4 v3, 0x0

    .line 596
    .local v3, index:I
    if-nez p2, :cond_0

    .line 597
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ipprefix"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, prefix:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 599
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v7, v0, v2

    .line 600
    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 608
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #prefix:Ljava/lang/String;
    .end local v7           #s:Ljava/lang/String;
    :cond_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0b02d9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;

    invoke-direct {v9, p0, v4, p1, p2}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$5;-><init>(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;[Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v8, v4, v3, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b02e1

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$4;

    invoke-direct {v10, p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting$4;-><init>(Lcom/android/phone/SingleSimCallSetting$IpCallSetting;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 638
    .local v1, builderr:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 639
    return-void

    .line 603
    .end local v1           #builderr:Landroid/app/AlertDialog$Builder;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #prefix:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 357
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 358
    const v7, 0x7f050013

    invoke-virtual {p0, v7}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->addPreferencesFromResource(I)V

    .line 360
    const-string v7, "button_ip_enable"

    invoke-virtual {p0, v7}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    .line 362
    sget-object v7, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_PREFIX_LIST_KEY:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    .line 364
    sget-object v7, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_SELF_LOCATION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    .line 366
    sget-object v7, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    .line 368
    sget-object v7, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_CALL_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    .line 370
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 371
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 376
    :cond_0
    const-string v7, "auto_ip_call_sp"

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 377
    .local v1, ipSwitchFirstCheck:Landroid/content/SharedPreferences;
    const-string v7, "first_check"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    .line 380
    invoke-static {}, Landroid/telephony/BaiduTelephonyManager;->getDefault()Landroid/telephony/BaiduTelephonyManager;

    move-result-object v6

    .line 381
    .local v6, telMgr:Landroid/telephony/BaiduTelephonyManager;
    invoke-static {}, Lcom/android/phone/SingleSimCallSetting;->access$000()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/BaiduTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, operatorNumeric:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/SingleSimCallSetting;->access$000()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    .line 383
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

    .line 384
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

    .line 385
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

    .line 387
    .local v2, isChinaMobile:Z
    :goto_2
    const v7, 0x7f060016

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->entries:I

    .line 388
    const v7, 0x7f060017

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->values:I

    .line 389
    if-eqz v4, :cond_8

    .line 390
    const v7, 0x7f060010

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->entries:I

    .line 391
    const v7, 0x7f060011

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->values:I

    .line 399
    :cond_4
    :goto_3
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 400
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    .line 401
    return-void

    .end local v2           #isChinaMobile:Z
    .end local v3           #isTelecom:Z
    .end local v4           #isUnicom:Z
    :cond_5
    move v4, v8

    .line 383
    goto :goto_0

    .restart local v4       #isUnicom:Z
    :cond_6
    move v3, v8

    .line 384
    goto :goto_1

    .restart local v3       #isTelecom:Z
    :cond_7
    move v2, v8

    .line 385
    goto :goto_2

    .line 392
    .restart local v2       #isChinaMobile:Z
    :cond_8
    if-eqz v3, :cond_9

    .line 393
    const v7, 0x7f060012

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->entries:I

    .line 394
    const v7, 0x7f060013

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->values:I

    goto :goto_3

    .line 395
    :cond_9
    if-eqz v2, :cond_4

    .line 396
    const v7, 0x7f060014

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->entries:I

    .line 397
    const v7, 0x7f060015

    iput v7, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->values:I

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 577
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 578
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->finish()V

    .line 580
    const/4 v1, 0x1

    .line 582
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

    .line 471
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    .line 472
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 474
    .local v1, ipEnable:Z
    if-eqz v1, :cond_0

    sget-boolean v4, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    if-eqz v4, :cond_0

    .line 479
    sput-boolean v6, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    .line 481
    const-string v4, "auto_ip_call_sp"

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 482
    .local v3, save:Landroid/content/SharedPreferences$Editor;
    const-string v4, "first_check"

    sget-boolean v7, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 483
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    invoke-direct {p0, p0, v5}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V

    .line 491
    .end local v3           #save:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ipenabled"

    if-eqz v1, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_1

    move v6, v5

    :cond_1
    int-to-short v6, v6

    invoke-static {v4, v6}, Lcom/android/phone/UBCUtils;->submitIPSetting(Landroid/content/Context;S)V

    .line 514
    .end local v1           #ipEnable:Z
    :goto_1
    return v5

    .restart local v1       #ipEnable:Z
    :cond_2
    move v4, v6

    .line 491
    goto :goto_0

    .line 494
    .end local v1           #ipEnable:Z
    .restart local p2
    :cond_3
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    if-ne p1, v4, :cond_6

    .line 495
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, ipPrefix:Ljava/lang/String;
    const-string v4, "custom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 497
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "ipprefix"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 500
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 502
    :cond_4
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b02d9

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 506
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {p0, p0, v4, v6}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_1

    .line 509
    .end local v2           #ipPrefix:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_8

    .line 510
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 511
    .local v0, ipCallAutoEnabled:Z
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "ipautoenable"

    if-eqz v0, :cond_7

    move v6, v5

    :cond_7
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0           #ipCallAutoEnabled:Z
    .restart local p2
    :cond_8
    move v5, v6

    .line 514
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 519
    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_1

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/QueryLocation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "localSimId"

    invoke-static {}, Lcom/android/phone/SingleSimCallSetting;->access$000()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->startActivity(Landroid/content/Intent;)V

    .line 530
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 527
    const/4 v1, 0x0

    invoke-direct {p0, p0, v1}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 405
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 411
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "ipenabled"

    invoke-static {v0, v12, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 413
    .local v8, ipEnable:I
    iget-object v12, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-ne v8, v11, :cond_8

    move v0, v11

    :goto_0
    invoke-virtual {v12, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 416
    .end local v8           #ipEnable:I
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "ipprefix"

    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, ipPrefix:Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 419
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 427
    .end local v9           #ipPrefix:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "ipselflocation"

    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 429
    .local v10, selfLocation:Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 435
    .end local v10           #selfLocation:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "ipautoenable"

    invoke-static {v0, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 437
    .local v7, ipCallAutoEnable:I
    iget-object v12, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-ne v7, v11, :cond_a

    move v0, v11

    :goto_2
    invoke-virtual {v12, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 440
    .end local v7           #ipCallAutoEnable:I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    .line 441
    sget-object v1, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 442
    .local v1, whiteListUri:Landroid/net/Uri;
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 443
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 445
    .local v3, selection:Ljava/lang/String;
    :goto_3
    new-array v4, v11, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 446
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 447
    const/4 v4, 0x0

    .line 449
    :cond_5
    const/4 v6, 0x0

    .line 451
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 452
    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    .line 453
    iget-object v5, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v11, :cond_c

    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f0b02ee

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :goto_5
    if-eqz v6, :cond_6

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 467
    .end local v1           #whiteListUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_7
    return-void

    .restart local v8       #ipEnable:I
    :cond_8
    move v0, v5

    .line 413
    goto/16 :goto_0

    .line 421
    .end local v8           #ipEnable:I
    .restart local v9       #ipPrefix:Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0b02d9

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    .end local v9           #ipPrefix:Ljava/lang/String;
    .restart local v7       #ipCallAutoEnable:I
    :cond_a
    move v0, v5

    .line 437
    goto :goto_2

    .line 443
    .end local v7           #ipCallAutoEnable:I
    .restart local v1       #whiteListUri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_b
    const-string v3, "subscriber = ?"

    goto :goto_3

    .line 453
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_c
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f0b02ef

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 457
    :cond_d
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b02e6

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 460
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_e

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
.end method
