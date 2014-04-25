.class public Lcom/android/phone/StkListEntrance;
.super Landroid/preference/PreferenceActivity;
.source "StkListEntrance.java"


# static fields
.field private static final REQUEST_TYPE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "StkListEntrance"

.field private static final baseband:Ljava/lang/String;

.field private static mDefaultTitle:Ljava/lang/String;

.field public static mSlot:I

.field private static strTargetClass:Ljava/lang/String;

.field private static strTargetLoc:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetClassIndex:I

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private serviceComplete:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/android/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 78
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/StkListEntrance;->baseband:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/StkListEntrance;->mSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/StkListEntrance;->mTargetClassIndex:I

    .line 85
    new-instance v0, Lcom/android/phone/StkListEntrance$1;

    invoke-direct {v0, p0}, Lcom/android/phone/StkListEntrance$1;-><init>(Lcom/android/phone/StkListEntrance;)V

    iput-object v0, p0, Lcom/android/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/android/phone/StkListEntrance$2;

    invoke-direct {v0, p0}, Lcom/android/phone/StkListEntrance$2;-><init>(Lcom/android/phone/StkListEntrance;)V

    iput-object v0, p0, Lcom/android/phone/StkListEntrance;->serviceComplete:Ljava/lang/Runnable;

    .line 258
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/phone/StkListEntrance;->serviceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/StkListEntrance;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/phone/StkListEntrance;->updateSimState(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/StkListEntrance;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 15

    .prologue
    .line 221
    const-string v1, "StkListEntrance"

    const-string v2, "[addSimInfoPreference]+"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/StkListEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 224
    .local v12, root:Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_0

    .line 225
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 227
    .local v13, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/provider/Telephony$SIMInfo;

    .line 228
    .local v14, siminfo:Landroid/provider/Telephony$SIMInfo;
    iget-object v1, p0, Lcom/android/phone/StkListEntrance;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v2, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v5

    .line 229
    .local v5, status:I
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim status of slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addSimInfoPreference][siminfo.mSimId] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v14, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Lcom/android/phone/SimInfoPreference;

    iget-object v2, v14, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iget-object v3, v14, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iget v4, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v6, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget v7, v14, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iget-wide v8, v14, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V

    .line 235
    .local v0, simInfoPref:Lcom/android/phone/SimInfoPreference;
    const-string v1, "StkListEntrance"

    const-string v2, "[addSimInfoPreference][addPreference]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 241
    .end local v0           #simInfoPref:Lcom/android/phone/SimInfoPreference;
    .end local v5           #status:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v14           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-void
.end method

.method private setDefaultSIMIndicate(I)V
    .locals 4
    .parameter "slotID"

    .prologue
    .line 308
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSIMState][slotID] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/android/phone/StkListEntrance;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v0

    .line 310
    .local v0, state:I
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSIMState][state] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, p1, v0}, Lcom/android/phone/StkListEntrance;->updateSimState(II)V

    .line 312
    return-void
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/phone/StkListEntrance;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 303
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 304
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 305
    return-void
.end method

.method private updateSimState(II)V
    .locals 6
    .parameter "slotID"
    .parameter "state"

    .prologue
    .line 285
    const-string v2, "StkListEntrance"

    const-string v3, "[updateSimState]+"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 288
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_1

    .line 289
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSimState][siminfo.mSimId] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-wide v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/StkListEntrance;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SimInfoPreference;

    .line 291
    .local v0, pref:Lcom/android/phone/SimInfoPreference;
    const-string v2, "StkListEntrance"

    const-string v3, "[updateSimState][setStatus] "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p2}, Lcom/android/phone/SimInfoPreference;->setStatus(I)V

    .line 295
    :cond_0
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState sim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0           #pref:Lcom/android/phone/SimInfoPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v0, "StkListEntrance"

    const-string v1, "[onCreate] +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 115
    iput-object p0, p0, Lcom/android/phone/StkListEntrance;->mContext:Landroid/content/Context;

    .line 119
    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/android/phone/StkListEntrance;->addPreferencesFromResource(I)V

    .line 120
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/StkListEntrance;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 122
    const-string v0, "StkListEntrance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseband is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/StkListEntrance;->baseband:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/Utils;->mSupport3G:Z

    .line 129
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    .line 130
    iget-object v0, p0, Lcom/android/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/StkListEntrance;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/StkListEntrance;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/StkListEntrance;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    const-string v0, "StkListEntrance"

    const-string v1, "[onCreate][addSimInfoPreference] "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/phone/StkListEntrance;->addSimInfoPreference()V

    .line 139
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/StkListEntrance;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 265
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 158
    const-string v6, "StkListEntrance"

    const-string v7, "Enter onPreferenceClick function."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v6, 0x0

    sput-object v6, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 161
    const/4 v6, 0x0

    sput-object v6, Lcom/android/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 162
    const-string v6, "StkListEntrance"

    const-string v7, "[onPreferenceTreeClick] +"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 164
    .local v3, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {p0}, Lcom/android/phone/StkListEntrance;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 165
    .local v4, pm:Landroid/content/pm/PackageManager;
    const-string v6, "StkListEntrance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onPreferenceTreeClick][Click SIM1][SimState] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v6, "StkListEntrance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onPreferenceTreeClick][Click SIM2][SimState] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v6, v7}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    .line 169
    .local v5, siminfo1:Landroid/provider/Telephony$SIMInfo;
    if-eqz v5, :cond_0

    .line 170
    iget v6, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    sput v6, Lcom/android/phone/StkListEntrance;->mSlot:I

    .line 172
    :cond_0
    const-string v6, "StkListEntrance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[aaa][onPreferenceTreeClick][mSlot] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/phone/StkListEntrance;->mSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget v6, Lcom/android/phone/StkListEntrance;->mSlot:I

    if-nez v6, :cond_5

    .line 174
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.stk"

    const-string v7, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v0, cName1:Landroid/content/ComponentName;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v7, :cond_3

    .line 178
    iget-object v6, p0, Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    sget v7, Lcom/android/phone/StkListEntrance;->mSlot:I

    const/16 v8, 0x12e

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 206
    .end local v0           #cName1:Landroid/content/ComponentName;
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 207
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "StkListEntrance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[aaa][onPreferenceTreeClick][mSlot][strTargetLoc] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v6, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    sget-object v7, Lcom/android/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/phone/StkListEntrance;->startActivity(Landroid/content/Intent;)V

    .line 214
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const-string v6, "StkListEntrance"

    const-string v7, "[onPreferenceTreeClick] -"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 179
    .restart local v0       #cName1:Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 180
    const v6, 0x7f0b0354

    invoke-virtual {p0, v6}, Lcom/android/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/phone/StkListEntrance;->finish()V

    .line 182
    const/4 v6, 0x0

    goto :goto_1

    .line 184
    :cond_4
    const-string v6, "com.android.stk"

    sput-object v6, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 185
    const-string v6, "com.android.stk.StkLauncherActivity"

    sput-object v6, Lcom/android/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    goto :goto_0

    .line 188
    .end local v0           #cName1:Landroid/content/ComponentName;
    :cond_5
    sget v6, Lcom/android/phone/StkListEntrance;->mSlot:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 189
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.android.stk"

    const-string v7, "com.android.stk.StkLauncherActivityII"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v1, cName2:Landroid/content/ComponentName;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v7, :cond_6

    .line 193
    iget-object v6, p0, Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    sget v7, Lcom/android/phone/StkListEntrance;->mSlot:I

    const/16 v8, 0x12e

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0

    .line 194
    :cond_6
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 195
    const v6, 0x7f0b0354

    invoke-virtual {p0, v6}, Lcom/android/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/StkListEntrance;->finish()V

    .line 197
    const/4 v6, 0x0

    goto :goto_1

    .line 199
    :cond_7
    const-string v6, "com.android.stk"

    sput-object v6, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 200
    const-string v6, "com.android.stk.StkLauncherActivityII"

    sput-object v6, Lcom/android/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 275
    sput-object v0, Lcom/android/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 276
    sput-object v0, Lcom/android/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 277
    const-string v0, "StkListEntrance"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/StkListEntrance;->setDefaultSIMIndicate(I)V

    .line 280
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/StkListEntrance;->setDefaultSIMIndicate(I)V

    .line 281
    return-void
.end method
