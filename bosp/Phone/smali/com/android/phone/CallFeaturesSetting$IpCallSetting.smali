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

.field private static final CALLLOCATION_By_PHONE_NUMBER_CONTENT_URL:Ljava/lang/String; = "content://com.android.Contacts.CallLocation/calllocation"

.field private static IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String; = null

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
    .line 324
    const-string v0, "ip_prefix_list_key"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_PREFIX_LIST_KEY:Ljava/lang/String;

    .line 325
    const-string v0, "ip_call_self_location_city"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SELF_LOCATION_KEY:Ljava/lang/String;

    .line 326
    const-string v0, "ip_call_auto_enable"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String;

    .line 327
    const-string v0, "ip_call_white_list"

    sput-object v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_WHITE_LIST:Ljava/lang/String;

    .line 339
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SWITCH_CHECKED_FIRST_TIME:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 350
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mHanlder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 320
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method private customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 6
    .parameter "context"
    .parameter "view"
    .parameter "needQueryLocation"

    .prologue
    const/4 v2, 0x0

    .line 579
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02e2

    new-instance v3, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;Landroid/view/View;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02e1

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

    .line 618
    return-void
.end method

.method private getAnEditText()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 698
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 699
    .local v0, customIpPrefix:Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 700
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 702
    const-string v1, ""

    .line 703
    .local v1, customed:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-object v1, v2, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpCustomPrefix:Ljava/lang/String;

    .line 706
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 707
    return-object v0
.end method

.method public static ipCallNotSetYet(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 715
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v2

    invoke-static {p0, v2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v1

    .line 716
    .local v1, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    const/4 v0, 0x1

    .line 717
    .local v0, notSetYet:I
    if-eqz v1, :cond_0

    .line 718
    iget v0, v1, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpFirstEnable:I

    .line 720
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIpCallSwitchCheckedNow(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, isChecked:Z
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v2

    invoke-static {p0, v2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v1

    .line 730
    .local v1, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v1, :cond_0

    .line 731
    iget v2, v1, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 731
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showIpPrefixDialog(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V

    .line 692
    return-void
.end method

.method private showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "firstSet"

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, ipPrefix:[Ljava/lang/String;
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    const v9, 0x7f0b02e3

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, index:I
    if-nez p2, :cond_1

    .line 642
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v9

    invoke-static {v8, v9}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    .line 643
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-object v6, v8, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 644
    .local v6, prefix:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v7, v0, v2

    .line 645
    .local v7, s:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 646
    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 650
    .end local v7           #s:Ljava/lang/String;
    :cond_0
    if-lez v3, :cond_1

    .line 652
    add-int/lit8 v3, v3, -0x1

    .line 655
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0b02d9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;

    invoke-direct {v9, p0, v4, p1, p2}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;[Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v8, v4, v3, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b02e1

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$4;

    invoke-direct {v10, p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting$IpCallSetting;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 686
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 687
    return-void

    .line 644
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #prefix:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 385
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 386
    const v6, 0x7f050013

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->addPreferencesFromResource(I)V

    .line 388
    const-string v6, "button_ip_enable"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    .line 390
    sget-object v6, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_PREFIX_LIST_KEY:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    .line 392
    sget-object v6, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_SELF_LOCATION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    .line 394
    sget-object v6, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_AUTO_ENABLE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    .line 396
    sget-object v6, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->IP_CALL_WHITE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    .line 398
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 399
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 405
    :cond_0
    invoke-static {}, Landroid/telephony/BaiduTelephonyManager;->getDefault()Landroid/telephony/BaiduTelephonyManager;

    move-result-object v5

    .line 406
    .local v5, telMgr:Landroid/telephony/BaiduTelephonyManager;
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/BaiduTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, operatorNumeric:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    .line 408
    const-string v6, "46001"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "46006"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move v3, v8

    .line 409
    .local v3, isUnicom:Z
    :goto_0
    const-string v6, "46003"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46005"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    move v2, v8

    .line 410
    .local v2, isTelecom:Z
    :goto_1
    const-string v6, "46000"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46002"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46007"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    move v1, v8

    .line 412
    .local v1, isChinaMobile:Z
    :goto_2
    const v6, 0x7f060016

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 413
    const v6, 0x7f060017

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    .line 414
    if-eqz v3, :cond_8

    .line 415
    const v6, 0x7f060010

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 416
    const v6, 0x7f060011

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    .line 424
    :cond_4
    :goto_3
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 425
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    .line 426
    return-void

    .end local v1           #isChinaMobile:Z
    .end local v2           #isTelecom:Z
    .end local v3           #isUnicom:Z
    :cond_5
    move v3, v7

    .line 408
    goto :goto_0

    .restart local v3       #isUnicom:Z
    :cond_6
    move v2, v7

    .line 409
    goto :goto_1

    .restart local v2       #isTelecom:Z
    :cond_7
    move v1, v7

    .line 410
    goto :goto_2

    .line 417
    .restart local v1       #isChinaMobile:Z
    :cond_8
    if-eqz v2, :cond_9

    .line 418
    const v6, 0x7f060012

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 419
    const v6, 0x7f060013

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    goto :goto_3

    .line 420
    :cond_9
    if-eqz v1, :cond_4

    .line 421
    const v6, 0x7f060014

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->entries:I

    .line 422
    const v6, 0x7f060015

    iput v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->values:I

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 622
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 623
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->finish()V

    .line 625
    const/4 v1, 0x1

    .line 627
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 505
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_4

    .line 506
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 512
    .local v1, ipEnable:Z
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v6

    invoke-static {v3, v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    .line 513
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget v3, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpFirstEnable:I

    if-ne v3, v4, :cond_0

    .line 515
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v6, v6, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v3, v5, v6, v7}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpFirstEnable(Landroid/content/Context;IJ)I

    .line 521
    invoke-direct {p0, p0, v4}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->showIpPrefixListDialogFirstTime(Landroid/content/Context;Z)V

    .line 523
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v3, :cond_2

    .line 524
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_3

    move v3, v4

    :goto_0
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v7, v7, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v6, v3, v7, v8}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpEnable(Landroid/content/Context;IJ)I

    .line 525
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_1

    move v5, v4

    :cond_1
    int-to-short v5, v5

    invoke-static {v3, v5}, Lcom/android/phone/UBCUtils;->submitIPSetting(Landroid/content/Context;S)V

    .line 552
    .end local v1           #ipEnable:Z
    :cond_2
    :goto_1
    return v4

    .restart local v1       #ipEnable:Z
    :cond_3
    move v3, v5

    .line 524
    goto :goto_0

    .line 528
    .end local v1           #ipEnable:Z
    .restart local p2
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    if-ne p1, v3, :cond_8

    .line 529
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, ipPrefix:Ljava/lang/String;
    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 531
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v3, :cond_5

    .line 532
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v5, v5, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v3, v2, v5, v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpPrefix(Landroid/content/Context;Ljava/lang/String;J)I

    .line 535
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 536
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 538
    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b02d9

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 542
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getAnEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-direct {p0, p0, v3, v5}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->customIpPrefix(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_1

    .line 545
    .end local v2           #ipPrefix:Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_a

    .line 546
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 547
    .local v0, ipCallAutoEnabled:Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v3, :cond_2

    .line 548
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_9

    move v5, v4

    :cond_9
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-wide v6, v6, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    invoke-static {v3, v5, v6, v7}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setIpAutoEnable(Landroid/content/Context;IJ)I

    goto :goto_1

    .end local v0           #ipCallAutoEnabled:Z
    .restart local p2
    :cond_a
    move v4, v5

    .line 552
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 557
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_1

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/QueryLocation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "localSimId"

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->startActivity(Landroid/content/Intent;)V

    .line 574
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_2

    .line 565
    invoke-direct {p0, p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->showIpPrefixDialog(Landroid/content/Context;)V

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 568
    const-string v1, "whitelist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startactivity-iccid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-object v3, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/IPCallWhiteListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "subscriberId"

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 430
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 435
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()I

    move-result v10

    invoke-static {v0, v10}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    .line 436
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v0, :cond_0

    .line 438
    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget v0, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    if-ne v0, v9, :cond_c

    move v0, v9

    :goto_0
    invoke-virtual {v10, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSwitcher:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 443
    const/4 v7, 0x0

    .line 444
    .local v7, ipPrefix:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-object v7, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 447
    :cond_2
    if-eqz v7, :cond_d

    .line 448
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 456
    .end local v7           #ipPrefix:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    .line 457
    const/4 v8, 0x0

    .line 458
    .local v8, selfLocation:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget-object v8, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpSelfLocation:Ljava/lang/String;

    .line 461
    :cond_4
    if-eqz v8, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 462
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpSelfLocation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 467
    .end local v8           #selfLocation:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    .line 468
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    if-eqz v0, :cond_7

    .line 469
    iget-object v10, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSimInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    iget v0, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpAutoEnable:I

    if-ne v0, v9, :cond_e

    move v0, v9

    :goto_2
    invoke-virtual {v10, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 471
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallAutoEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 473
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    .line 475
    sget-object v1, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 476
    .local v1, whiteListUri:Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 477
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 479
    .local v3, selection:Ljava/lang/String;
    :goto_3
    new-array v4, v9, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 480
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mSubscriberId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 481
    const/4 v4, 0x0

    .line 483
    :cond_9
    const/4 v6, 0x0

    .line 485
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 486
    if-eqz v6, :cond_11

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 487
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v9, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f0b02ee

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :goto_5
    if-eqz v6, :cond_a

    .line 495
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 501
    .end local v1           #whiteListUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_b
    return-void

    :cond_c
    move v0, v5

    .line 438
    goto/16 :goto_0

    .line 450
    .restart local v7       #ipPrefix:Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpPrefixList:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0b02d9

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    .end local v7           #ipPrefix:Ljava/lang/String;
    :cond_e
    move v0, v5

    .line 469
    goto :goto_2

    .line 477
    .restart local v1       #whiteListUri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_f
    const-string v3, "subscriber = ?"

    goto :goto_3

    .line 487
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_10
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f0b02ef

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 491
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->mIpCallWhiteList:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b02e6

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 494
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_12

    .line 495
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v0
.end method
