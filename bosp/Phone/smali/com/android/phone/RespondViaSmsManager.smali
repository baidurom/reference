.class public Lcom/android/phone/RespondViaSmsManager;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RespondViaSmsManager$Settings;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final KEY_CANNED_RESPONSE_PREF_1:Ljava/lang/String; = "canned_response_pref_1"

.field private static final KEY_CANNED_RESPONSE_PREF_2:Ljava/lang/String; = "canned_response_pref_2"

.field private static final KEY_CANNED_RESPONSE_PREF_3:Ljava/lang/String; = "canned_response_pref_3"

.field private static final KEY_CANNED_RESPONSE_PREF_4:Ljava/lang/String; = "canned_response_pref_4"

.field private static final NUM_CANNED_RESPONSES:I = 0x4

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "respond_via_sms_prefs"

.field private static final TAG:Ljava/lang/String; = "RespondViaSmsManager"

.field private static final VDBG:Z


# instance fields
.field private mCannedResponses:[Ljava/lang/String;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPopup:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/RespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method public static allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z
    .locals 7
    .parameter "ringingCall"

    .prologue
    const/4 v3, 0x0

    .line 577
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSmsForCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 580
    :cond_0
    if-nez p0, :cond_1

    .line 581
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null ringingCall!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_0
    return v3

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-nez v4, :cond_2

    .line 589
    const-string v4, "RespondViaSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowRespondViaSmsForCall: ringingCall not ringing! state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 594
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_3

    .line 598
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null Connection!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, number:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- number: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 605
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 606
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: no incoming number!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    :cond_5
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 615
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: incoming \'number\' is a SIP address."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 621
    .local v2, presentation:I
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- presentation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 622
    :cond_7
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v2, v4, :cond_8

    .line 626
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: PRESENTATION_RESTRICTED."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 630
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 631
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: isDMLocked."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private launchSmsCompose(Ljava/lang/String;)V
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 338
    const-string v4, "sms"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 339
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 347
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "simId"

    invoke-static {}, Lcom/android/phone/BaiduPhoneAdapter;->getBusySlot()I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/BaiduPhoneAdapter;->toMTKSlot(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 355
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 357
    .local v2, isSecure:Z
    if-nez v2, :cond_0

    .line 358
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 361
    .end local v2           #isSecure:Z
    :cond_0
    iget-object v4, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method private loadCannedResponses()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 512
    sget-boolean v3, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "loadCannedResponses()..."

    invoke-static {v3}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v4, "respond_via_sms_prefs"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 517
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 519
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 524
    .local v2, responses:[Ljava/lang/String;
    const-string v3, "canned_response_pref_1"

    const v4, 0x7f0b02b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 526
    const/4 v3, 0x1

    const-string v4, "canned_response_pref_2"

    const v5, 0x7f0b02b4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 528
    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f0b02b5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 530
    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f0b02b6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 532
    return-object v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 646
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method private sendText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    .line 315
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v2, "simId"

    invoke-static {}, Lcom/android/phone/BaiduPhoneAdapter;->getBusySlot()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/BaiduPhoneAdapter;->toMTKSlot(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    iget-object v2, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 330
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 198
    :cond_0
    return-void
.end method

.method protected getSendTextSimId()I
    .locals 6

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, id:I
    const/4 v3, 0x0

    .line 654
    .local v3, slot:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v1, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 655
    .local v1, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_0

    .line 656
    const/4 v3, 0x1

    .line 657
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_1

    .line 658
    const/4 v3, 0x0

    .line 660
    :cond_1
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 661
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_2

    .line 662
    iget-wide v4, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    long-to-int v0, v4

    .line 663
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSendTextSimId, slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 665
    return v0
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 115
    return-void
.end method

.method protected shouldDismissInCallScreen()Z
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 670
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter "ringingCall"

    .prologue
    .line 123
    sget-boolean v7, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "showRespondViaSmsPopup()..."

    invoke-static {v7}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v3, Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v3, lv:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/phone/RespondViaSmsManager;->loadCannedResponses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    .line 135
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v4, v7, 0x1

    .line 136
    .local v4, numPopupItems:I
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 137
    .local v6, popupItems:[Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b02b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 140
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v8, 0x7f040044

    const v9, 0x1020014

    invoke-direct {v0, v7, v8, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 145
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 157
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_1

    .line 164
    const-string v7, "RespondViaSmsManager"

    const-string v8, "showRespondViaSmsPopup: null connection; bailing out..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, phoneNumber:Ljava/lang/String;
    new-instance v7, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;

    invoke-direct {v7, p0, v5}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;-><init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;

    invoke-direct {v8, p0}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;-><init>(Lcom/android/phone/RespondViaSmsManager;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 182
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 183
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
