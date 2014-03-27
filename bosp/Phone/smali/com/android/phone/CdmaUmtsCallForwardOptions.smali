.class public Lcom/android/phone/CdmaUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaUmtsCallForwardOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final BUTTON_CANCEL_ALL_FORWARD_KEY:Ljava/lang/String; = "cancle_all_forward_key"

.field private static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cfb_key"

.field private static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cfnrc_key"

.field private static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cfnry_key"

.field private static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cfu_key"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_TOGGLE:Ljava/lang/String; = "toggle"

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaUmtsCallForwardOptions"

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final ALWAS_FORWAR_DISABLE:Ljava/lang/String;

.field private final ALWAS_FORWAR_ENABLE:Ljava/lang/String;

.field private final BUSY_FORWAR_DISABLE:Ljava/lang/String;

.field private final BUSY_FORWAR_ENABLE:Ljava/lang/String;

.field private final CANCLE_FORWAR_ALL:Ljava/lang/String;

.field private final DBG:Z

.field private final NOANSWER_FORWAR_DISABLE:Ljava/lang/String;

.field private final NOANSWER_FORWAR_ENABLE:Ljava/lang/String;

.field private final NOSINA_FORWAR_DISABLE:Ljava/lang/String;

.field private final NOSINA_FORWAR_ENABLE:Ljava/lang/String;

.field private cancleAllForward:Landroid/preference/Preference;

.field private mBaiduAppTitle:Lyi/app/BaiduAppTitle;

.field private mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CdmaCallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->DBG:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 49
    iput v1, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mInitIndex:I

    .line 54
    const-string v0, "*72"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->ALWAS_FORWAR_ENABLE:Ljava/lang/String;

    .line 55
    const-string v0, "*720"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->ALWAS_FORWAR_DISABLE:Ljava/lang/String;

    .line 57
    const-string v0, "*90"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->BUSY_FORWAR_ENABLE:Ljava/lang/String;

    .line 58
    const-string v0, "*900"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->BUSY_FORWAR_DISABLE:Ljava/lang/String;

    .line 60
    const-string v0, "*92"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->NOANSWER_FORWAR_ENABLE:Ljava/lang/String;

    .line 61
    const-string v0, "*920"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->NOANSWER_FORWAR_DISABLE:Ljava/lang/String;

    .line 63
    const-string v0, "*68"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->NOSINA_FORWAR_ENABLE:Ljava/lang/String;

    .line 64
    const-string v0, "*680"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->NOSINA_FORWAR_DISABLE:Ljava/lang/String;

    .line 66
    const-string v0, "*730"

    iput-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->CANCLE_FORWAR_ALL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaUmtsCallForwardOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->toast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaUmtsCallForwardOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->call(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaUmtsCallForwardOptions;)Lcom/android/phone/CdmaCallForwardEditPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    return-object v0
.end method

.method private call(Ljava/lang/String;)V
    .locals 3
    .parameter "callNum"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method private toast()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 226
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v2, 0x7f050006

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    .line 77
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mBaiduAppTitle:Lyi/app/BaiduAppTitle;

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Lyi/app/BaiduAppTitle;

    invoke-direct {v2, p0}, Lyi/app/BaiduAppTitle;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mBaiduAppTitle:Lyi/app/BaiduAppTitle;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mBaiduAppTitle:Lyi/app/BaiduAppTitle;

    invoke-virtual {v4}, Lyi/app/BaiduAppTitle;->getLayoutId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 83
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mBaiduAppTitle:Lyi/app/BaiduAppTitle;

    invoke-virtual {v2}, Lyi/app/BaiduAppTitle;->installYiAppTitle()V

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 86
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_cfu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 88
    const-string v2, "button_cfb_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 90
    const-string v2, "button_cfnry_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 92
    const-string v2, "button_cfnrc_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 94
    const-string v2, "cancle_all_forward_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->cancleAllForward:Landroid/preference/Preference;

    .line 97
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 98
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 99
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 100
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v3, v3, Lcom/android/phone/CdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 102
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->cancleAllForward:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    new-instance v0, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions$1;-><init>(Lcom/android/phone/CdmaUmtsCallForwardOptions;)V

    .line 138
    .local v0, l:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaCallForwardEditPreference;->setDialogOnClosedListener(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaCallForwardEditPreference;->setDialogOnClosedListener(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaCallForwardEditPreference;->setDialogOnClosedListener(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 141
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaCallForwardEditPreference;->setDialogOnClosedListener(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 143
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mFirstResume:Z

    .line 153
    iput-object p1, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 154
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 214
    iget v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mInitIndex:I

    .line 216
    iget-object v0, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaCallForwardEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CdmaCallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 219
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 220
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c02bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 263
    const v1, 0x7f0c02bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 264
    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    const v1, 0x7f0c020f

    new-instance v2, Lcom/android/phone/CdmaUmtsCallForwardOptions$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CdmaUmtsCallForwardOptions$2;-><init>(Lcom/android/phone/CdmaUmtsCallForwardOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 274
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 195
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    iget-object v3, p0, Lcom/android/phone/CdmaUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 202
    .local v2, pref:Lcom/android/phone/CdmaCallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    iget-object v3, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    .line 205
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 210
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CdmaCallForwardEditPreference;
    :cond_1
    return-void
.end method
