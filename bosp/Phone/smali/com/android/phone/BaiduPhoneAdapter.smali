.class public Lcom/android/phone/BaiduPhoneAdapter;
.super Ljava/lang/Object;
.source "BaiduPhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    }
.end annotation


# static fields
.field public static CURRENT_MODE:I = 0x0

.field public static DUAL_MODE:I = 0x0

.field private static final KEY_CANNED_RESPONSE_PREF_1:Ljava/lang/String; = "canned_response_pref_1"

.field private static final KEY_CANNED_RESPONSE_PREF_2:Ljava/lang/String; = "canned_response_pref_2"

.field private static final KEY_CANNED_RESPONSE_PREF_3:Ljava/lang/String; = "canned_response_pref_3"

.field private static final KEY_CANNED_RESPONSE_PREF_4:Ljava/lang/String; = "canned_response_pref_4"

.field private static final NUM_CANNED_RESPONSES:I = 0x4

.field public static PLATFORM_DEFAULT:I = 0x0

.field public static PLATFORM_MTK:I = 0x0

.field public static PLATFORM_QRD:I = 0x0

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "respond_via_sms_prefs"

.field public static SINGLE_MODE:I = 0x0

.field public static final SLOT1:I = 0x0

.field public static final SLOT2:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/android/phone/BaiduPhoneAdapter;->SINGLE_MODE:I

    .line 38
    sput v1, Lcom/android/phone/BaiduPhoneAdapter;->DUAL_MODE:I

    .line 39
    sput v0, Lcom/android/phone/BaiduPhoneAdapter;->PLATFORM_MTK:I

    .line 40
    sput v1, Lcom/android/phone/BaiduPhoneAdapter;->PLATFORM_QRD:I

    .line 41
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/BaiduPhoneAdapter;->PLATFORM_DEFAULT:I

    .line 42
    sget v0, Lcom/android/phone/BaiduPhoneAdapter;->DUAL_MODE:I

    sput v0, Lcom/android/phone/BaiduPhoneAdapter;->CURRENT_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getBusySlot()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    const/4 v1, -0x1

    .line 141
    .local v1, slot:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 143
    .local v0, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v5}, Lcom/android/phone/BaiduPhoneAdapter;->getSimState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_2

    .line 144
    const/4 v1, 0x1

    .line 149
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 150
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const/4 v1, 0x0

    .line 160
    :cond_1
    :goto_1
    return v1

    .line 145
    :cond_2
    invoke-static {v4}, Lcom/android/phone/BaiduPhoneAdapter;->getSimState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 146
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static getCurrentMode()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/phone/BaiduPhoneAdapter;->DUAL_MODE:I

    return v0
.end method

.method public static getCurrentPlatform()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/phone/BaiduPhoneAdapter;->PLATFORM_MTK:I

    return v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, operatorName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 207
    .local v1, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_2

    .line 208
    const-string v2, "gsm.operator.alpha.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    .line 215
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    const-string v2, "gsm.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_1
    :goto_1
    return-object v0

    .line 209
    :cond_2
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 210
    const-string v2, "gsm.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const-string v2, "gsm.operator.alpha.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 183
    if-nez p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneAdapter;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    move-result-object v0

    .line 188
    .local v0, info:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    if-eqz v0, :cond_0

    .line 192
    iget v2, v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simSlotId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 193
    const-string v1, "gsm.operator.alpha.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 194
    :cond_2
    iget v2, v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simSlotId:I

    if-nez v2, :cond_0

    .line 195
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOperatorNameBySlot(I)Ljava/lang/String;
    .locals 2
    .parameter "slot"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, operatorName:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 80
    const-string v1, "gsm.operator.alpha.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    if-nez p0, :cond_0

    .line 82
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRejectSmsContents(Lcom/android/phone/InCallScreen;)[Ljava/lang/String;
    .locals 6
    .parameter "incallscreen"

    .prologue
    const/4 v5, 0x0

    .line 243
    const-string v3, "respond_via_sms_prefs"

    invoke-virtual {p0, v3, v5}, Lcom/android/phone/InCallScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 253
    .local v2, responses:[Ljava/lang/String;
    const-string v3, "canned_response_pref_1"

    const v4, 0x7f0b02b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 255
    const/4 v3, 0x1

    const-string v4, "canned_response_pref_2"

    const v5, 0x7f0b02b4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 257
    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f0b02b5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 259
    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f0b02b6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 261
    return-object v2
.end method

.method public static getRingingConnection()Lcom/android/internal/telephony/Connection;
    .locals 3

    .prologue
    .line 298
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 299
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 301
    .local v1, rc:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 304
    .end local v1           #rc:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    .locals 7
    .parameter "call"

    .prologue
    const/4 v5, 0x0

    .line 164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    move-object v0, v5

    .line 180
    :goto_0
    return-object v0

    .line 167
    :cond_1
    new-instance v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    invoke-direct {v0}, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;-><init>()V

    .line 169
    .local v0, bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 171
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, serialNumber:Ljava/lang/String;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v4

    .line 173
    .local v4, simId:I
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 174
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_2

    .line 175
    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simName:Ljava/lang/String;

    .line 176
    iget v5, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v5}, Lcom/android/phone/BaiduPhoneAdapter;->toBaiduSlot(I)I

    move-result v5

    iput v5, v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simSlotId:I

    goto :goto_0

    :cond_2
    move-object v0, v5

    .line 180
    goto :goto_0
.end method

.method public static getSimInfoBySlot(ILandroid/content/Context;)Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    .locals 3
    .parameter "slot"
    .parameter "context"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneAdapter;->toMTKSlot(I)I

    move-result p0

    .line 91
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 92
    .local v1, mSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_1

    .line 93
    iget-object v2, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 94
    invoke-static {p1, p0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 96
    :cond_0
    new-instance v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    invoke-direct {v0}, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;-><init>()V

    .line 97
    .local v0, bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    iget-object v2, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simName:Ljava/lang/String;

    .line 98
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneAdapter;->toBaiduSlot(I)I

    move-result v2

    iput v2, v0, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simSlotId:I

    .line 101
    .end local v0           #bsi:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimNameBySlot(I)Ljava/lang/String;
    .locals 1
    .parameter "slot"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSimState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 3
    .parameter "slot"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneAdapter;->toMTKSlot(I)I

    move-result v0

    .line 106
    .local v0, mtkSlot:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 107
    .local v1, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    return-object v2
.end method

.method public static isDualMode()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public static launchSmsCompose(Ljava/lang/String;Lcom/android/phone/InCallScreen;)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "incallscreen"

    .prologue
    .line 265
    const-string v2, "sms"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "simId"

    invoke-static {}, Lcom/android/phone/BaiduPhoneAdapter;->getBusySlot()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/BaiduPhoneAdapter;->toMTKSlot(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    invoke-virtual {p1, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method

.method public static queryIPPrefix(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "slot"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-static {p1, p0}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v2

    .line 64
    .local v2, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v2, :cond_0

    .line 65
    iget v1, v2, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    .line 66
    .local v1, ipEnable:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v3, v2, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 72
    .end local v1           #ipEnable:I
    .end local v2           #simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "ipprefix"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static sendText(Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/InCallScreen;)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "message"
    .parameter "incallscreen"

    .prologue
    .line 282
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 283
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v2, "simId"

    invoke-static {}, Lcom/android/phone/BaiduPhoneAdapter;->getBusySlot()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/BaiduPhoneAdapter;->toMTKSlot(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    invoke-virtual {p2, v0}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 295
    return-void
.end method

.method static toBaiduSlot(I)I
    .locals 1
    .parameter "mtkSlot"

    .prologue
    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, bSlot:I
    packed-switch p0, :pswitch_data_0

    .line 120
    :goto_0
    return v0

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static toMTKSlot(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 124
    const/4 v0, -0x1

    .line 125
    .local v0, mtkSlot:I
    packed-switch p0, :pswitch_data_0

    .line 133
    :goto_0
    return v0

    .line 127
    :pswitch_0
    const/4 v0, 0x0

    .line 128
    goto :goto_0

    .line 130
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
