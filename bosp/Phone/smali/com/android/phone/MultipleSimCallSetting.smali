.class public Lcom/android/phone/MultipleSimCallSetting;
.super Lyi/preference/PreferenceGroupActivity;
.source "MultipleSimCallSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MultipleSimCallSetting$AutoReDialSetting;,
        Lcom/android/phone/MultipleSimCallSetting$AutoRecordSetting;,
        Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;
    }
.end annotation


# static fields
.field private static final AUTO_RECORD_SETTING:Ljava/lang/String; = "autorecord_setting_entry_key"

.field private static final AUTO_RECORD_SETTING_CATEGORY:Ljava/lang/String; = "autorecord_setting_category"

.field private static final AUTO_REDIAL_SETTING:Ljava/lang/String; = "autoredial_setting_entry_key"

.field private static final BAIDU_SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "baidu_sip_settings_category_key"

.field private static final BROADCAST_CALL_BY_TTS:Ljava/lang/String; = "broadcast_call_by_tts"

.field private static final BROADCAST_TTS_GROUP:Ljava/lang/String; = "broadcast_by_tts_key"

.field private static final BUTON_FLIPMUTE_ENABLE:Ljava/lang/String; = "button_flipmute_enable"

.field private static final BUTTON_SIP_ENABLE:Ljava/lang/String; = "button_sip_enable"

.field private static final BUTTON_VIBRATE_ENABLE:Ljava/lang/String; = "button_vibrate_enable"

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.android.phone.SingleSimCallSetting"

.field public static final LIST_TITLE:Ljava/lang/String; = "LIST_TITLE_NAME"

.field public static final NETWORK_MODE_NAME:Ljava/lang/String; = "NETWORK_MODE"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field public static SUB_TITLE_NAME:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final TTS_BROADCAST_ENBALE:Ljava/lang/String; = "tts_broadcast_enable"

.field public static final VT_FEATURE_NAME:Ljava/lang/String; = "VT"

.field public static initArray:Ljava/lang/String;

.field public static initArrayValue:Ljava/lang/String;

.field public static initBaseKey:Ljava/lang/String;

.field public static initFeatureName:Ljava/lang/String;

.field public static initSimId:Ljava/lang/String;

.field public static initSimNumber:Ljava/lang/String;

.field public static initTitleName:Ljava/lang/String;

.field public static intentKey:Ljava/lang/String;

.field public static targetClassKey:Ljava/lang/String;


# instance fields
.field private defaultCard:Landroid/preference/PreferenceScreen;

.field private mAutoRedialSetting:Landroid/preference/PreferenceScreen;

.field private mBaseKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFeatureName:Ljava/lang/String;

.field private mFlipMute:Landroid/preference/SwitchPreference;

.field private mHalfView:Landroid/preference/SwitchPreference;

.field private mItemType:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRecordSetting:Landroid/preference/PreferenceScreen;

.field private mRecordSettingCategory:Landroid/preference/PreferenceCategory;

.field private mSimMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetClass:Ljava/lang/String;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTitleName:Ljava/lang/String;

.field private mTtsBroadCast:Landroid/preference/SwitchPreference;

.field private mVibrate:Landroid/preference/SwitchPreference;

.field pd:Landroid/app/ProgressDialog;

.field private preCfr:Lcom/android/phone/PreCheckForRunningSetting;

.field private simCardName:[Ljava/lang/String;

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
    .line 127
    const-string v0, "ITEM_TYPE"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->intentKey:Ljava/lang/String;

    .line 128
    const-string v0, "sub_title_name"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    .line 131
    const-string v0, "TARGET_CLASS"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->targetClassKey:Ljava/lang/String;

    .line 134
    const-string v0, "INIT_ARRAY"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->initArray:Ljava/lang/String;

    .line 135
    const-string v0, "INIT_ARRAY_VALUE"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->initArrayValue:Ljava/lang/String;

    .line 137
    const-string v0, "INIT_SIM_NUMBER"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->initSimNumber:Ljava/lang/String;

    .line 138
    const-string v0, "INIT_FEATURE_NAME"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->initFeatureName:Ljava/lang/String;

    .line 139
    const-string v0, "INIT_TITLE_NAME"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->initTitleName:Ljava/lang/String;

    .line 140
    const-string v0, "INIT_SIM_ID"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->initSimId:Ljava/lang/String;

    .line 141
    const-string v0, "INIT_BASE_KEY"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->initBaseKey:Ljava/lang/String;

    .line 156
    const-string v0, "MultipleSimCallSetting"

    sput-object v0, Lcom/android/phone/MultipleSimCallSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lyi/preference/PreferenceGroupActivity;-><init>()V

    .line 126
    const-string v0, "PreferenceScreen"

    iput-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mItemType:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 162
    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunningSetting;

    .line 164
    iput-object v1, p0, Lcom/android/phone/MultipleSimCallSetting;->pd:Landroid/app/ProgressDialog;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mSimMap:Ljava/util/Map;

    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->simCardName:[Ljava/lang/String;

    .line 706
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MultipleSimCallSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MultipleSimCallSetting;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->simCardName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MultipleSimCallSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/phone/MultipleSimCallSetting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MultipleSimCallSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private createSubItems()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mItemType:Ljava/lang/String;

    const-string v1, "PreferenceScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->initPreferenceScreen()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mTitleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mTitleName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/MultipleSimCallSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    :cond_1
    return-void
.end method

.method static updateWhiteListSettingSummary(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V
    .locals 11
    .parameter "context"
    .parameter "screen"
    .parameter "subscriberId"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 616
    if-eqz p1, :cond_1

    .line 618
    sget-object v1, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 619
    .local v1, whiteListUri:Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 620
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 621
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 622
    .local v4, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriber = ? AND type = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 625
    new-array v4, v9, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    aput-object p2, v4, v10

    .line 629
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 631
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 632
    const/4 v7, 0x0

    .line 633
    .local v7, count:I
    if-eqz v6, :cond_0

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 637
    :cond_0
    if-lez v7, :cond_4

    .line 638
    if-le v7, v9, :cond_3

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b02ee

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 646
    .local v8, summary:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    if-eqz v6, :cond_1

    .line 649
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 653
    .end local v1           #whiteListUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v8           #summary:Ljava/lang/String;
    :cond_1
    return-void

    .line 627
    .restart local v1       #whiteListUri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 641
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #count:I
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b02ef

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #summary:Ljava/lang/String;
    goto :goto_1

    .line 644
    .end local v8           #summary:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b02fe

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .restart local v8       #summary:Ljava/lang/String;
    goto :goto_1

    .line 648
    .end local v7           #count:I
    .end local v8           #summary:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 649
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public checkAllowedRun(Landroid/content/Intent;Landroid/preference/Preference;)V
    .locals 4
    .parameter "intent"
    .parameter "preference"

    .prologue
    .line 529
    const-string v2, "simId"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 530
    .local v1, slot:I
    const/4 v0, 0x0

    .line 531
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v2, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 537
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    const/4 v2, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 541
    :cond_1
    return-void
.end method

.method initPreferenceScreen()V
    .locals 15

    .prologue
    .line 347
    const-string v11, "button_sim_key_0"

    invoke-virtual {p0, v11}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 348
    .local v5, sim1InfoPref:Landroid/preference/Preference;
    const-string v11, "button_sim_key_1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 349
    .local v6, sim2InfoPref:Landroid/preference/Preference;
    invoke-static {p0}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredVoiceSlot(Landroid/content/Context;)I

    move-result v1

    .line 350
    .local v1, defaultVoiceCard:I
    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    .line 351
    .local v10, temp:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 352
    .local v2, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v11, v11, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v11, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v2           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 357
    .restart local v2       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    const-wide/16 v11, -0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 358
    .local v0, _simid:Ljava/lang/Long;
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mSimMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 359
    .local v7, simid:Ljava/lang/Long;
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mSimMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    .line 361
    .local v8, siminfo:Landroid/provider/Telephony$SIMInfo;
    sget-object v11, Lcom/android/phone/MultipleSimCallSetting;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-----siminfo.mSlot = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", siminfo.mSimId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v8, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v11, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v11, :cond_1

    .line 365
    iget-wide v11, v8, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 367
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v12, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v11, v12}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v9

    .line 370
    .local v9, status:I
    iget-object v11, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    const/4 v11, 0x0

    iget-object v12, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 372
    if-nez v1, :cond_2

    .line 373
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    :cond_2
    iget-object v11, v8, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget v11, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v4

    .line 377
    .local v4, isRadioOn:Z
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    .end local v4           #isRadioOn:Z
    .end local v7           #simid:Ljava/lang/Long;
    .end local v8           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v9           #status:I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_5

    .line 388
    const v11, 0x7f0b0422

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 389
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0422

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 390
    if-nez v1, :cond_4

    .line 391
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0b0425

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 392
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 395
    :cond_5
    const-wide/16 v11, -0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 397
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mSimMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 398
    .restart local v7       #simid:Ljava/lang/Long;
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mSimMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/Telephony$SIMInfo;

    .line 400
    .restart local v8       #siminfo:Landroid/provider/Telephony$SIMInfo;
    iget v11, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 401
    iget-wide v11, v8, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 403
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v12, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v11, v12}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v9

    .line 406
    .restart local v9       #status:I
    iget-object v11, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 407
    const/4 v11, 0x1

    iget-object v12, v8, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 408
    const/4 v11, 0x1

    if-ne v1, v11, :cond_7

    .line 409
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    :cond_7
    iget-object v11, v8, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    iget v11, v8, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v4

    .line 413
    .restart local v4       #isRadioOn:Z
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 421
    .end local v4           #isRadioOn:Z
    .end local v7           #simid:Ljava/lang/Long;
    .end local v8           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v9           #status:I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_a

    .line 423
    const v11, 0x7f0b0423

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 424
    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0423

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 425
    const/4 v11, 0x1

    if-ne v1, v11, :cond_9

    .line 426
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0b0425

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 427
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 429
    :cond_a
    const/4 v11, -0x1

    if-ne v1, v11, :cond_b

    .line 430
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0b0425

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 431
    :cond_b
    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0425

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 432
    iput-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->simCardName:[Ljava/lang/String;

    .line 433
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 195
    invoke-super {p0, p1}, Lyi/preference/PreferenceGroupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.SingleSimCallSetting"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/phone/MultipleSimCallSetting;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->finish()V

    .line 254
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 208
    const v4, 0x7f050016

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->addPreferencesFromResource(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 211
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_default_card"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    .line 212
    const-string v2, "PreferenceScreen"

    .line 213
    .local v2, itemType:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 214
    iput-object v2, p0, Lcom/android/phone/MultipleSimCallSetting;->mItemType:Ljava/lang/String;

    .line 217
    :cond_1
    new-instance v4, Lcom/android/phone/PreCheckForRunningSetting;

    invoke-direct {v4, p0}, Lcom/android/phone/PreCheckForRunningSetting;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunningSetting;

    .line 219
    const-string v4, "com.android.phone.CallFeaturesSetting"

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b0061

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mTitleName:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mBaseKey:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 225
    new-instance v4, Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mBaseKey:Ljava/lang/String;

    .line 228
    :cond_2
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 232
    const-string v4, "broadcast_call_by_tts"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    .line 233
    iget-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tts_broadcast_enable"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, isTtsOn:I
    iget-object v7, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-ne v1, v5, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 237
    const-string v4, "button_flipmute_enable"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    .line 238
    iget-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    const-string v4, "button_vibrate_enable"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mVibrate:Landroid/preference/SwitchPreference;

    .line 240
    iget-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    const-string v4, "autoredial_setting_entry_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mAutoRedialSetting:Landroid/preference/PreferenceScreen;

    .line 245
    const-string v4, "autorecord_setting_category"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mRecordSettingCategory:Landroid/preference/PreferenceCategory;

    .line 246
    invoke-static {p0}, Lcom/baidu/phone/BaiduPhoneUtils;->allowInCallRecord(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 247
    iget-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mRecordSettingCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :goto_2
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 253
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 236
    goto :goto_1

    .line 249
    :cond_4
    const-string v4, "autorecord_setting_entry_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MultipleSimCallSetting;->mRecordSetting:Landroid/preference/PreferenceScreen;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 544
    invoke-super {p0}, Lyi/preference/PreferenceGroupActivity;->onDestroy()V

    .line 545
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunningSetting;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/phone/MultipleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunningSetting;

    invoke-virtual {v0}, Lcom/android/phone/PreCheckForRunningSetting;->deRegister()V

    .line 548
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 607
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 608
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->finish()V

    .line 610
    const/4 v1, 0x1

    .line 612
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lyi/preference/PreferenceGroupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 588
    iget-object v5, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_2

    .line 589
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 590
    .local v1, isTtsOn:Z
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_broadcast_enable"

    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    sget-object v3, Lcom/android/phone/MultipleSimCallSetting;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "change the mTtsBroadCast! isTtsOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v1           #isTtsOn:Z
    :cond_1
    :goto_0
    return v4

    .line 593
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/phone/MultipleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_4

    .line 594
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 595
    .local v2, mute:Z
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "flip_mute"

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 597
    .end local v2           #mute:Z
    .restart local p2
    :cond_4
    iget-object v5, p0, Lcom/android/phone/MultipleSimCallSetting;->mVibrate:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_1

    .line 598
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 599
    .local v0, enable:Z
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_enable"

    if-eqz v0, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v12, 0x12e

    const/16 v11, 0x2e

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 439
    const-string v10, "button_sim_key_0"

    invoke-virtual {p0, v10}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_2

    .line 440
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 441
    .local v2, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 442
    .local v7, position:I
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v10, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, pkName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v10, "simId"

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    sget-object v10, Lcom/android/phone/MultipleSimCallSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mFeatureName:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mFeatureName:Ljava/lang/String;

    const-string v11, "VT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 450
    const-string v10, "ISVT"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    :cond_0
    iget-object v9, p0, Lcom/android/phone/MultipleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunningSetting;

    invoke-virtual {v9, v2, v3, v12}, Lcom/android/phone/PreCheckForRunningSetting;->checkToRun(Landroid/content/Intent;II)V

    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #pkName:Ljava/lang/String;
    .end local v7           #position:I
    :cond_1
    :goto_0
    move v9, v3

    .line 525
    :goto_1
    return v9

    .line 455
    :cond_2
    const-string v10, "button_sim_key_1"

    invoke-virtual {p0, v10}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-ne p2, v10, :cond_4

    .line 456
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 457
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 458
    .restart local v7       #position:I
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v10, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 459
    .restart local v6       #pkName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v10, "simId"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    sget-object v10, Lcom/android/phone/MultipleSimCallSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-static {p0, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mFeatureName:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mFeatureName:Ljava/lang/String;

    const-string v11, "VT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 466
    const-string v10, "ISVT"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    :cond_3
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunningSetting;

    invoke-virtual {v10, v2, v9, v12}, Lcom/android/phone/PreCheckForRunningSetting;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 471
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #pkName:Ljava/lang/String;
    .end local v7           #position:I
    :cond_4
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_7

    .line 472
    invoke-static {p0}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredVoiceSlot(Landroid/content/Context;)I

    move-result v0

    .line 473
    .local v0, defaultVoiceCard:I
    const/4 v8, 0x2

    .line 474
    .local v8, whichslot:I
    if-nez v0, :cond_6

    .line 475
    const/4 v8, 0x0

    .line 478
    :cond_5
    :goto_2
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x104

    new-instance v12, Lcom/android/phone/MultipleSimCallSetting$2;

    invoke-direct {v12, p0}, Lcom/android/phone/MultipleSimCallSetting$2;-><init>(Lcom/android/phone/MultipleSimCallSetting;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->simCardName:[Ljava/lang/String;

    new-instance v12, Lcom/android/phone/MultipleSimCallSetting$1;

    invoke-direct {v12, p0}, Lcom/android/phone/MultipleSimCallSetting$1;-><init>(Lcom/android/phone/MultipleSimCallSetting;)V

    invoke-virtual {v10, v11, v8, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0b0424

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 507
    .local v5, pinDialog:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 476
    .end local v5           #pinDialog:Landroid/app/AlertDialog;
    :cond_6
    if-ne v0, v9, :cond_5

    .line 477
    const/4 v8, 0x1

    goto :goto_2

    .line 509
    .end local v0           #defaultVoiceCard:I
    .end local v8           #whichslot:I
    :cond_7
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-ne p2, v10, :cond_9

    .line 510
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_8

    move v3, v9

    .line 511
    .local v3, isTtsOn:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tts_broadcast_enable"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 513
    .end local v3           #isTtsOn:I
    :cond_9
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    if-ne p2, v10, :cond_b

    .line 514
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    move v4, v9

    .line 515
    .local v4, mute:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "flip_mute"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v4           #mute:I
    :cond_a
    move v4, v3

    .line 514
    goto :goto_3

    .line 518
    :cond_b
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mVibrate:Landroid/preference/SwitchPreference;

    if-ne p2, v10, :cond_1

    .line 519
    iget-object v10, p0, Lcom/android/phone/MultipleSimCallSetting;->mVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_c

    move v1, v9

    .line 520
    .local v1, enable:I
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "vibrate_enable"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1           #enable:I
    :cond_c
    move v1, v3

    .line 519
    goto :goto_4
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 258
    invoke-super {p0}, Lyi/preference/PreferenceGroupActivity;->onResume()V

    .line 260
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->simList:Ljava/util/List;

    .line 262
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mSimMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->simList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/provider/Telephony$SIMInfo;

    .line 264
    .local v9, siminfo:Landroid/provider/Telephony$SIMInfo;
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mSimMap:Ljava/util/Map;

    iget-wide v12, v9, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    .end local v9           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    const/4 v1, 0x0

    .line 269
    .local v1, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v11, v11, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v11, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v1           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 273
    .restart local v1       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_1
    const-string v11, "button_sim_key_0"

    invoke-virtual {p0, v11}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 274
    .local v7, sim1InfoPref:Landroid/preference/Preference;
    const-string v11, "button_sim_key_1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MultipleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 276
    .local v8, sim2InfoPref:Landroid/preference/Preference;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v11

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v11

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    invoke-static {}, Landroid/telephony/BaiduTelephonyManager;->getDefault()Landroid/telephony/BaiduTelephonyManager;

    move-result-object v0

    .line 280
    .local v0, baiduTelephonyManager:Landroid/telephony/BaiduTelephonyManager;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/telephony/BaiduTelephonyManager;->hasIccCard(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/telephony/BaiduTelephonyManager;->hasIccCard(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 282
    const/4 v11, 0x0

    invoke-static {p0, v11}, Landroid/telephony/BaiduTelephonyUtils;->isSlotActive(Landroid/content/Context;I)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    invoke-static {p0, v11}, Landroid/telephony/BaiduTelephonyUtils;->isSlotActive(Landroid/content/Context;I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 285
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 293
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/MultipleSimCallSetting;->createSubItems()V

    .line 295
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "tts_broadcast_enable"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 298
    .local v4, isTtsOn:I
    iget-object v12, p0, Lcom/android/phone/MultipleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    if-ne v4, v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 300
    sget-object v11, Lcom/android/phone/MultipleSimCallSetting;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onResume the mTtsBroadCast! isTtsOn :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v4           #isTtsOn:I
    :cond_2
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "flip_mute"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 306
    .local v5, mute:I
    iget-object v12, p0, Lcom/android/phone/MultipleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    if-ne v5, v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 309
    .end local v5           #mute:I
    :cond_3
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mVibrate:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_4

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "vibrate_enable"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 312
    .local v2, enable:I
    iget-object v12, p0, Lcom/android/phone/MultipleSimCallSetting;->mVibrate:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    if-ne v2, v11, :cond_b

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 315
    .end local v2           #enable:I
    :cond_4
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mRecordSetting:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_5

    .line 317
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->isAutoRecordEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 318
    .local v6, recordEnable:Z
    if-nez v6, :cond_c

    .line 319
    const v10, 0x7f0b02fa

    .line 323
    .local v10, summary:I
    :goto_5
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mRecordSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v10}, Lcom/android/phone/MultipleSimCallSetting;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    .end local v6           #recordEnable:Z
    .end local v10           #summary:I
    :cond_5
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mAutoRedialSetting:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_6

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/MultipleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_redial"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 329
    .restart local v2       #enable:I
    const/4 v11, 0x1

    if-ne v2, v11, :cond_d

    const v10, 0x7f0b02d4

    .line 330
    .restart local v10       #summary:I
    :goto_6
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->mAutoRedialSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v10}, Lcom/android/phone/MultipleSimCallSetting;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    .end local v2           #enable:I
    .end local v10           #summary:I
    :cond_6
    return-void

    .line 287
    :cond_7
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 290
    :cond_8
    iget-object v11, p0, Lcom/android/phone/MultipleSimCallSetting;->defaultCard:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 298
    .restart local v4       #isTtsOn:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 306
    .end local v4           #isTtsOn:I
    .restart local v5       #mute:I
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 312
    .end local v5           #mute:I
    .restart local v2       #enable:I
    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 321
    .end local v2           #enable:I
    .restart local v6       #recordEnable:Z
    :cond_c
    const v10, 0x7f0b02f9

    .restart local v10       #summary:I
    goto :goto_5

    .line 329
    .end local v6           #recordEnable:Z
    .end local v10           #summary:I
    .restart local v2       #enable:I
    :cond_d
    const v10, 0x7f0b02d5

    goto :goto_6
.end method
