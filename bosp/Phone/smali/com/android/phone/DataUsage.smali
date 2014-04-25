.class public Lcom/android/phone/DataUsage;
.super Landroid/preference/PreferenceActivity;
.source "DataUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static M:J


# instance fields
.field private mCurrentUsagePref:Landroid/preference/Preference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mHelpPref:Landroid/preference/Preference;

.field private mHelpUri:Ljava/lang/String;

.field private mResetPref:Landroid/preference/Preference;

.field private mSimId:J

.field private mSlotId:I

.field private mSum:Ljava/lang/String;

.field private mThrottleManager:Landroid/net/ThrottleManager;

.field private mThrottleRatePref:Landroid/preference/Preference;

.field private mTimeFramePref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/phone/DataUsage;->M:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/DataUsage;->mSlotId:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/DataUsage;->mSimId:J

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mSum:Ljava/lang/String;

    return-void
.end method

.method private subSpecialString(D)Ljava/lang/String;
    .locals 4
    .parameter "d"

    .prologue
    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, src:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 112
    .local v0, pos:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 114
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_0
    return-object v1
.end method

.method private static toReadable(J)Ljava/lang/String;
    .locals 12
    .parameter "data"

    .prologue
    const-wide/16 v9, 0x400

    .line 152
    const-wide/16 v2, 0x400

    .line 153
    .local v2, KB:J
    mul-long v4, v9, v2

    .line 154
    .local v4, MB:J
    mul-long v0, v9, v4

    .line 155
    .local v0, GB:J
    mul-long v6, v9, v0

    .line 158
    .local v6, TB:J
    cmp-long v9, p0, v2

    if-gez v9, :cond_0

    .line 159
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, ret:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 160
    .end local v8           #ret:Ljava/lang/String;
    :cond_0
    cmp-long v9, p0, v4

    if-gez v9, :cond_1

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p0, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v8           #ret:Ljava/lang/String;
    :cond_1
    cmp-long v9, p0, v0

    if-gez v9, :cond_2

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p0, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v8           #ret:Ljava/lang/String;
    :cond_2
    cmp-long v9, p0, v6

    if-gez v9, :cond_3

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p0, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v8           #ret:Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-long v10, p0, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    const-string v0, "Settings/DataUsage: "

    const-string v1, "Reset data amount!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Landroid/preference/Preference;

    const-string v1, "0 bytes"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    iget-wide v0, p0, Lcom/android/phone/DataUsage;->mSimId:J

    invoke-static {p0, v0, v1}, Landroid/provider/Telephony$GPRSInfo;->resetGprsBySim(Landroid/content/Context;J)I

    .line 204
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v2, "throttle"

    invoke-virtual {p0, v2}, Lcom/android/phone/DataUsage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ThrottleManager;

    iput-object v2, p0, Lcom/android/phone/DataUsage;->mThrottleManager:Landroid/net/ThrottleManager;

    .line 66
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/android/phone/DataUsage;->addPreferencesFromResource(I)V

    .line 68
    const-string v2, "throttle_current_usage"

    invoke-virtual {p0, v2}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Landroid/preference/Preference;

    .line 69
    const-string v2, "rest_total_usage"

    invoke-virtual {p0, v2}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DataUsage;->mResetPref:Landroid/preference/Preference;

    .line 70
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "simId"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/DataUsage;->mSlotId:I

    .line 74
    iget v2, p0, Lcom/android/phone/DataUsage;->mSlotId:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 75
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    :goto_0
    iput-wide v2, p0, Lcom/android/phone/DataUsage;->mSimId:J

    .line 88
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/DataUsage;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    :goto_2
    return-void

    .line 75
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 79
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, sims:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 81
    :cond_3
    const-string v2, "Settings/DataUsage:"

    const-string v3, "onCreate: Fatal error  Insert sim list is null!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->finish()V

    goto :goto_2

    .line 85
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-wide v2, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v2, p0, Lcom/android/phone/DataUsage;->mSimId:J

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 176
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mResetPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 190
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 123
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 125
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/phone/DataUsage;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->updateMobileData(I)V

    .line 131
    iget-wide v4, p0, Lcom/android/phone/DataUsage;->mSimId:J

    invoke-static {p0, v4, v5}, Landroid/provider/Telephony$GPRSInfo;->getGprsInfoBySim(Landroid/content/Context;J)Landroid/provider/Telephony$GPRSInfo;

    move-result-object v1

    .line 132
    .local v1, info:Landroid/provider/Telephony$GPRSInfo;
    iget-wide v4, v1, Landroid/provider/Telephony$GPRSInfo;->mGprsIn:J

    iget-wide v6, v1, Landroid/provider/Telephony$GPRSInfo;->mGprsOut:J

    add-long v2, v4, v6

    .line 147
    .local v2, total:J
    invoke-static {v2, v3}, Lcom/android/phone/DataUsage;->toReadable(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/DataUsage;->mSum:Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/phone/DataUsage;->mSum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method
