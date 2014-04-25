.class public Lcom/android/phone/MultipleSimActivity;
.super Landroid/preference/PreferenceActivity;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MultipleSimActivity$MultipleSimReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final LIST_TITLE:Ljava/lang/String; = "LIST_TITLE_NAME"

.field public static final NETWORK_MODE_NAME:Ljava/lang/String; = "NETWORK_MODE"

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field private static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field private static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field public static SUB_TITLE_NAME:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field public static final VT_FEATURE_NAME:Ljava/lang/String; = "VT"

.field public static initArray:Ljava/lang/String;

.field public static initArrayValue:Ljava/lang/String;

.field public static initBaseKey:Ljava/lang/String;

.field public static initFeatureName:Ljava/lang/String;

.field public static initSimId:Ljava/lang/String;

.field public static initSimNumber:Ljava/lang/String;

.field public static initTitleName:Ljava/lang/String;

.field public static intentKey:Ljava/lang/String;

.field private static m3GSupportSlot:I

.field public static targetClassKey:Ljava/lang/String;


# instance fields
.field private mBaseKey:Ljava/lang/String;

.field private mFeatureName:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mItemType:Ljava/lang/String;

.field private mListTitle:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Lcom/android/phone/MultipleSimActivity$MultipleSimReceiver;

.field private mSimNumbers:I

.field private mTargetClass:Ljava/lang/String;

.field private mTitleName:Ljava/lang/String;

.field private mVTWhichToSave:I

.field pd:Landroid/app/ProgressDialog;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field private preCfr:Lcom/android/phone/PreCheckForRunning;

.field private pref2CardSlot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private simIds:[J

.field private simList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "ITEM_TYPE"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    .line 109
    const-string v0, "sub_title_name"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    .line 112
    const-string v0, "TARGET_CLASS"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    .line 115
    const-string v0, "INIT_ARRAY"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->initArray:Ljava/lang/String;

    .line 116
    const-string v0, "INIT_ARRAY_VALUE"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->initArrayValue:Ljava/lang/String;

    .line 120
    const-string v0, "INIT_SIM_NUMBER"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->initSimNumber:Ljava/lang/String;

    .line 121
    const-string v0, "INIT_FEATURE_NAME"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    .line 122
    const-string v0, "INIT_TITLE_NAME"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    .line 123
    const-string v0, "INIT_SIM_ID"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    .line 124
    const-string v0, "INIT_BASE_KEY"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    .line 146
    const-string v0, "MultipleSimActivity"

    sput-object v0, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/MultipleSimActivity;->m3GSupportSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 107
    const-string v0, "PreferenceScreen"

    iput-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mItemType:Ljava/lang/String;

    .line 133
    iput v2, p0, Lcom/android/phone/MultipleSimActivity;->mVTWhichToSave:I

    .line 135
    iput v2, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    .line 136
    iput-object v1, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 144
    iput-object v1, p0, Lcom/android/phone/MultipleSimActivity;->simIds:[J

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MultipleSimActivity;->pref2CardSlot:Ljava/util/HashMap;

    .line 153
    iput-object v1, p0, Lcom/android/phone/MultipleSimActivity;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 157
    new-instance v0, Lcom/android/phone/MultipleSimActivity$MultipleSimReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/android/phone/MultipleSimActivity;Lcom/android/phone/MultipleSimActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mReceiver:Lcom/android/phone/MultipleSimActivity$MultipleSimReceiver;

    .line 158
    iput-object v1, p0, Lcom/android/phone/MultipleSimActivity;->pd:Landroid/app/ProgressDialog;

    .line 160
    iput-object v1, p0, Lcom/android/phone/MultipleSimActivity;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 770
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MultipleSimActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->updatePreferenceEnableState()V

    return-void
.end method

.method private createSubItems()V
    .locals 9

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 281
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 283
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, c:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 285
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v0           #c:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 291
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 294
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 296
    .local v4, prefCount:I
    add-int/lit8 v1, v4, -0x1

    :goto_2
    iget v7, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    add-int/lit8 v7, v7, -0x1

    if-le v1, v7, :cond_3

    .line 298
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 301
    :cond_3
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mItemType:Ljava/lang/String;

    const-string v8, "PreferenceScreen"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 303
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->initPreferenceScreen()V

    .line 318
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mTitleName:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 320
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mTitleName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/phone/MultipleSimActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    :cond_5
    return-void

    .line 306
    :cond_6
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mItemType:Ljava/lang/String;

    const-string v8, "CheckBoxPreference"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 308
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->initCheckBoxPreference()V

    goto :goto_3

    .line 311
    :cond_7
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mItemType:Ljava/lang/String;

    const-string v8, "ListPreference"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 313
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->initListPreference()V

    goto :goto_3
.end method

.method private getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x4

    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, res:Ljava/lang/String;
    const/4 v0, 0x4

    .line 496
    .local v0, charCount:I
    if-nez p1, :cond_0

    move-object v2, v1

    .line 522
    .end local v1           #res:Ljava/lang/String;
    .local v2, res:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 497
    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 498
    iget v3, p1, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    packed-switch v3, :pswitch_data_0

    .line 519
    const-string v1, ""

    :cond_1
    :goto_1
    move-object v2, v1

    .line 522
    .end local v1           #res:Ljava/lang/String;
    .restart local v2       #res:Ljava/lang/String;
    goto :goto_0

    .line 501
    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :pswitch_0
    const-string v1, ""

    .line 502
    goto :goto_1

    .line 505
    :pswitch_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 507
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 512
    :pswitch_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 514
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getSimStatusImge(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 750
    packed-switch p0, :pswitch_data_0

    .line 766
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 752
    :pswitch_1
    const v0, 0x2020121

    goto :goto_0

    .line 754
    :pswitch_2
    const v0, 0x202010e

    goto :goto_0

    .line 756
    :pswitch_3
    const v0, 0x2020107

    goto :goto_0

    .line 758
    :pswitch_4
    const v0, 0x2020128

    goto :goto_0

    .line 760
    :pswitch_5
    const v0, 0x2020126

    goto :goto_0

    .line 762
    :pswitch_6
    const v0, 0x20200fe

    goto :goto_0

    .line 764
    :pswitch_7
    const v0, 0x2020127

    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initCheckBoxPreference()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 340
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v5, :cond_3

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CheckSimPreference;

    .line 343
    .local v2, p:Lcom/android/phone/CheckSimPreference;
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-object v5, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setSimColor(I)V

    .line 345
    invoke-virtual {v2, v0}, Lcom/android/phone/CheckSimPreference;->setSimSlot(I)V

    .line 346
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-object v5, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setSimName(Ljava/lang/String;)V

    .line 347
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget-object v5, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setSimNumber(Ljava/lang/String;)V

    .line 348
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {p0, v5}, Lcom/android/phone/MultipleSimActivity;->getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setSimIconNumber(Ljava/lang/String;)V

    .line 349
    iget-object v6, p0, Lcom/android/phone/MultipleSimActivity;->pref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 354
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 356
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setKey(Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 364
    .local v4, sp:Landroid/content/SharedPreferences;
    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setChecked(Z)V

    .line 365
    const-string v5, "button_vt_auto_dropback_key"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 366
    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/phone/CheckSimPreference;->setChecked(Z)V

    .line 368
    :cond_1
    invoke-virtual {v2, p0}, Lcom/android/phone/CheckSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 357
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    iget v5, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v2, v1}, Lcom/android/phone/CheckSimPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 370
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #p:Lcom/android/phone/CheckSimPreference;
    :cond_3
    return-void
.end method

.method private initListPreference()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 374
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Lcom/android/phone/MultipleSimActivity;->initArray:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    .line 375
    .local v0, array:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Lcom/android/phone/MultipleSimActivity;->initArrayValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 377
    .local v1, arrayValue:[Ljava/lang/CharSequence;
    const-string v8, "NETWORK_MODE"

    iget-object v9, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 378
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v8, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    if-ge v2, v8, :cond_5

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ListSimPreference;

    .line 384
    .local v4, listPref:Lcom/android/phone/ListSimPreference;
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget-object v8, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget v8, v8, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setSimColor(I)V

    .line 386
    invoke-virtual {v4, v2}, Lcom/android/phone/ListSimPreference;->setSimSlot(I)V

    .line 387
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget-object v8, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setSimName(Ljava/lang/String;)V

    .line 388
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget-object v8, v8, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setSimNumber(Ljava/lang/String;)V

    .line 389
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {p0, v8}, Lcom/android/phone/MultipleSimActivity;->getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setSimIconNumber(Ljava/lang/String;)V

    .line 392
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 393
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 394
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 395
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setKey(Ljava/lang/String;)V

    .line 402
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mListTitle:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 403
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mListTitle:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 406
    :cond_2
    invoke-virtual {v4, v0}, Lcom/android/phone/ListSimPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {v4, v1}, Lcom/android/phone/ListSimPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 408
    iget-object v9, p0, Lcom/android/phone/MultipleSimActivity;->pref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget v8, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 410
    .local v7, sp:Landroid/content/SharedPreferences;
    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setValue(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v4, p0}, Lcom/android/phone/ListSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 413
    const-string v8, "NETWORK_MODE"

    iget-object v9, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 414
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_network_mode"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 417
    .local v6, settingsNetworkMode:I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/phone/ListSimPreference;->setValue(Ljava/lang/String;)V

    .line 381
    .end local v6           #settingsNetworkMode:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 396
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 398
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    iget v8, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {v4, v3}, Lcom/android/phone/ListSimPreference;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 420
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #listPref:Lcom/android/phone/ListSimPreference;
    :cond_5
    return-void
.end method

.method private initPreferenceScreen()V
    .locals 6

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 326
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v3, :cond_0

    .line 327
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SimPreference;

    .line 328
    .local v1, p:Lcom/android/phone/SimPreference;
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/phone/SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v1, v3}, Lcom/android/phone/SimPreference;->setSimColor(I)V

    .line 330
    invoke-virtual {v1, v0}, Lcom/android/phone/SimPreference;->setSimSlot(I)V

    .line 331
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/phone/SimPreference;->setSimName(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v3, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/phone/SimPreference;->setSimNumber(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {p0, v3}, Lcom/android/phone/MultipleSimActivity;->getProperOperatorNumber(Landroid/provider/Telephony$SIMInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/phone/SimPreference;->setSimIconNumber(Ljava/lang/String;)V

    .line 334
    iget-object v4, p0, Lcom/android/phone/MultipleSimActivity;->pref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v1           #p:Lcom/android/phone/SimPreference;
    :cond_0
    return-void
.end method

.method private isNeededToCheckLock()Z
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "com.android.phone.IpPrefixPreference"

    iget-object v1, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 165
    sget-object v0, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 614
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MultipleSimActivity;->pd:Landroid/app/ProgressDialog;

    .line 615
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0089

    invoke-virtual {p0, v1}, Lcom/android/phone/MultipleSimActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 619
    return-void
.end method

.method private skipUsIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 260
    const-string v3, "VT"

    iget-object v4, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NETWORK_MODE"

    iget-object v4, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget v3, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 269
    .local v2, position:I
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, pkName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v4, "simId"

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/phone/MultipleSimActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->finish()V

    goto :goto_0
.end method

.method private sortSimList()V
    .locals 6

    .prologue
    .line 234
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 235
    .local v0, size:I
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sortSimList()+simList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 238
    .local v1, temp1:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 239
    .local v2, temp2:Landroid/provider/Telephony$SIMInfo;
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v3, v4, :cond_0

    .line 240
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    const-string v4, "swap the position of simList"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 242
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v1           #temp1:Landroid/provider/Telephony$SIMInfo;
    .end local v2           #temp2:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-void
.end method

.method private updatePreferenceEnableState()V
    .locals 5

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 804
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 805
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v4, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v4, v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v4, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 809
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 811
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 812
    .local v2, p:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 813
    iget-object v4, p0, Lcom/android/phone/MultipleSimActivity;->pref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 809
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v2           #p:Landroid/preference/Preference;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkAllowedRun(Landroid/content/Intent;Landroid/preference/Preference;)V
    .locals 4
    .parameter "intent"
    .parameter "preference"

    .prologue
    .line 479
    const-string v2, "simId"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 480
    .local v1, slot:I
    const/4 v0, 0x0

    .line 481
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 487
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    const/4 v2, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 490
    :cond_1
    return-void
.end method

.method public getNetworkMode(I)I
    .locals 5
    .parameter "buttonNetworkMode"

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, modemNetworkMode:I
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 531
    .local v1, settingsNetworkMode:I
    if-eq p1, v1, :cond_0

    .line 532
    packed-switch p1, :pswitch_data_0

    .line 558
    const/4 v0, 0x0

    .line 561
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    return v0

    .line 534
    :pswitch_0
    const/4 v0, 0x7

    .line 535
    goto :goto_0

    .line 537
    :pswitch_1
    const/4 v0, 0x6

    .line 538
    goto :goto_0

    .line 540
    :pswitch_2
    const/4 v0, 0x5

    .line 541
    goto :goto_0

    .line 543
    :pswitch_3
    const/4 v0, 0x4

    .line 544
    goto :goto_0

    .line 546
    :pswitch_4
    const/4 v0, 0x3

    .line 547
    goto :goto_0

    .line 549
    :pswitch_5
    const/4 v0, 0x2

    .line 550
    goto :goto_0

    .line 552
    :pswitch_6
    const/4 v0, 0x1

    .line 553
    goto :goto_0

    .line 555
    :pswitch_7
    const/4 v0, 0x0

    .line 556
    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 710
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 738
    :goto_0
    return-void

    .line 712
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 716
    :pswitch_0
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 717
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 718
    iget v2, p0, Lcom/android/phone/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v2, :cond_2

    .line 719
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 723
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    iget v2, p0, Lcom/android/phone/MultipleSimActivity;->mVTWhichToSave:I

    if-nez v2, :cond_3

    .line 731
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MultipleSimActivity;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 727
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 728
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 733
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MultipleSimActivity;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->simIds:[J

    .line 175
    const v2, 0x7f050015

    invoke-virtual {p0, v2}, Lcom/android/phone/MultipleSimActivity;->addPreferencesFromResource(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, itemType:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 180
    iput-object v1, p0, Lcom/android/phone/MultipleSimActivity;->mItemType:Ljava/lang/String;

    .line 183
    :cond_0
    new-instance v2, Lcom/android/phone/PreCheckForRunning;

    invoke-direct {v2, p0}, Lcom/android/phone/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mTitleName:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LIST_TITLE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mListTitle:Ljava/lang/String;

    .line 191
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 193
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mBaseKey:Ljava/lang/String;

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->simIds:[J

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->simIds:[J

    array-length v2, v2

    iput v2, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->simIds:[J

    aget-wide v3, v3, v0

    invoke-static {p0, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0           #i:I
    :cond_2
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    .line 208
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->simList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/android/phone/MultipleSimActivity;->mSimNumbers:I

    .line 210
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->sortSimList()V

    .line 211
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 214
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v2, p0, Lcom/android/phone/MultipleSimActivity;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 218
    const-string v2, "3G_SWITCH"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v2, :cond_5

    .line 220
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v2

    sput v2, Lcom/android/phone/MultipleSimActivity;->m3GSupportSlot:I

    .line 221
    sget-object v2, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3G support slot ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/MultipleSimActivity;->m3GSupportSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->skipUsIfNeeded()V

    .line 228
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->createSubItems()V

    .line 230
    iget-object v2, p0, Lcom/android/phone/MultipleSimActivity;->mReceiver:Lcom/android/phone/MultipleSimActivity$MultipleSimReceiver;

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MultipleSimActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void

    .line 223
    :cond_5
    sget-object v2, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    const-string v3, "Fail to get phone app instance"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 741
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 742
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->preCfr:Lcom/android/phone/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->preCfr:Lcom/android/phone/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/android/phone/PreCheckForRunning;->deRegister()V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mReceiver:Lcom/android/phone/MultipleSimActivity$MultipleSimReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MultipleSimActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 747
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    const-string v4, "VT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 571
    invoke-static {}, Lcom/android/phone/VTCallUtils;->checkVTFile()V

    .line 572
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "button_vt_replace_expand_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 573
    iput v5, p0, Lcom/android/phone/MultipleSimActivity;->mVTWhichToSave:I

    .line 574
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/MultipleSimActivity;->showDialogDefaultPic(Ljava/lang/String;)V

    .line 609
    .end local p2
    :cond_0
    :goto_0
    return v6

    .line 576
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/MultipleSimActivity;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "button_vt_replace_peer_expand_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    iput v6, p0, Lcom/android/phone/MultipleSimActivity;->mVTWhichToSave:I

    .line 582
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 583
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/MultipleSimActivity;->showDialogDefaultPic(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/MultipleSimActivity;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_4
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    const-string v4, "NETWORK_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 594
    .local v2, settingsNetworkMode:I
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current network mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/phone/MultipleSimActivity;->getNetworkMode(I)I

    move-result v1

    .line 596
    .local v1, networkMode:I
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new network mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-eq v2, v1, :cond_0

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 601
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string v3, "com.android.phone.NETWORK_MODE_CHANGE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    const-string v4, "simId"

    iget-object v3, p0, Lcom/android/phone/MultipleSimActivity;->pref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 604
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->showProgressDialog()V

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/phone/MultipleSimActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 434
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 435
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v7, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v7, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 440
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 442
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    if-ne p2, v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 444
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->pref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 445
    .local v6, slotId:I
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v7

    invoke-virtual {p2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 446
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 447
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 449
    .local v4, position:I
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, pkName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v7, "simId"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    sget-object v7, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    const-string v8, "VT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 456
    const-string v7, "ISVT"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->isNeededToCheckLock()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 460
    iget-object v7, p0, Lcom/android/phone/MultipleSimActivity;->preCfr:Lcom/android/phone/PreCheckForRunning;

    const/16 v8, 0x12e

    invoke-virtual {v7, v2, v6, v8}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 440
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pkName:Ljava/lang/String;
    .end local v4           #position:I
    .end local v6           #slotId:I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #pkName:Ljava/lang/String;
    .restart local v4       #position:I
    .restart local v6       #slotId:I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/phone/MultipleSimActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 475
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pkName:Ljava/lang/String;
    .end local v4           #position:I
    .end local v6           #slotId:I
    :cond_4
    return v9
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 252
    invoke-direct {p0}, Lcom/android/phone/MultipleSimActivity;->updatePreferenceEnableState()V

    .line 253
    return-void
.end method

.method public showDialogDefaultPic(Ljava/lang/String;)V
    .locals 6
    .parameter "filename"

    .prologue
    .line 686
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 687
    .local v2, mImg:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 688
    .local v0, mBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 690
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x104000a

    new-instance v5, Lcom/android/phone/MultipleSimActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/MultipleSimActivity$3;-><init>(Lcom/android/phone/MultipleSimActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 701
    .local v1, mDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b038a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 703
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 704
    return-void
.end method

.method public showDialogMyPic(Ljava/lang/String;)V
    .locals 6
    .parameter "filename"

    .prologue
    .line 623
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 624
    .local v2, mImg2:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 625
    .local v0, mBitmap2:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 627
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0395

    new-instance v5, Lcom/android/phone/MultipleSimActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/MultipleSimActivity$2;-><init>(Lcom/android/phone/MultipleSimActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/phone/MultipleSimActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/MultipleSimActivity$1;-><init>(Lcom/android/phone/MultipleSimActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 679
    .local v1, mDialog2:Landroid/app/AlertDialog;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 680
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 681
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 682
    return-void
.end method
