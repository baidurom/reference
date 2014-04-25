.class public Lcom/android/phone/BaiduPhoneUtil;
.super Ljava/lang/Object;
.source "BaiduPhoneUtil.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# static fields
.field private static final ACCELERO_THRESHOLD_HIGH:F = 9.0f

.field private static final ACCELERO_THRESHOLD_LOW:F = -3.0f

.field private static final ACCELERO_THRESHOLD_X_Y:F = 3.0f

.field static final ALLWAYS_ANIMATION_OUT:Z = true

.field static AUTO_RECORD_ENABLE_KEY:Ljava/lang/String; = null

.field static AUTO_RECORD_WHITE_LIST:Ljava/lang/String; = null

.field static final AUTO_REDIAL:Ljava/lang/String; = "auto_redial"

.field static final AUTO_REDIAL_REPEAT_TIME:Ljava/lang/String; = "auto_redial_repeat_time"

.field private static final DRATIO:F = 0.2f

.field private static final DSIZE:F = 0.5f

.field static final FLIP_MUTE:Ljava/lang/String; = "flip_mute"

.field static final HALF_VIEW:Ljava/lang/String; = "half_view"

.field public static MORE_BTN_CHECKED:Z = false

.field private static final MO_CALL_VIBRATE_TIME:I = 0x64

.field static RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BaiduPhoneUtil"

.field static final VIBRATE_ENABLE:Ljava/lang/String; = "vibrate_enable"

.field private static bIsSmallPhoto:Z

.field private static isHalfViewPreResume:Z

.field private static isHoldBtnClick:Z

.field private static mAccRegistered:Z

.field private static mCurCount:I

.field private static mDialIntent:Landroid/content/Intent;

.field private static mInstance:Lcom/android/phone/BaiduPhoneUtil;

.field private static mIsBusy:Z

.field private static mMayBusy:Z

.field private static mMinAcceler:F

.field private static mRedialCount:I

.field private static mSpeakerOn:Z

.field private static pattern:Ljava/util/regex/Pattern;

.field private static preventShowDialpad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    .line 66
    sput-object v2, Lcom/android/phone/BaiduPhoneUtil;->mInstance:Lcom/android/phone/BaiduPhoneUtil;

    .line 74
    const-string v0, "button_auto_record_enable"

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_ENABLE_KEY:Ljava/lang/String;

    .line 75
    const-string v0, "auto_record_for_white_enable"

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String;

    .line 76
    const-string v0, "auto_record_white_list"

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_WHITE_LIST:Ljava/lang/String;

    .line 79
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewPreResume:Z

    .line 276
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    .line 277
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    .line 430
    const-string v0, "^800\\d*|^400\\d*|^10\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->pattern:Ljava/util/regex/Pattern;

    .line 431
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 478
    sput-object v2, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    .line 479
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 480
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    .line 481
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mMayBusy:Z

    .line 482
    sput v1, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 483
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mSpeakerOn:Z

    .line 484
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V
    .locals 12
    .parameter "incallscreen"
    .parameter "ics"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 243
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const v11, 0x7f07007c

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 247
    .local v5, mbuttons:Landroid/view/View;
    const v11, 0x7f07007e

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    .line 249
    .local v4, mB:Landroid/widget/ToggleButton;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v6

    .line 251
    .local v6, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    const v11, 0x7f070068

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    .line 252
    .local v7, rc:Landroid/widget/ToggleButton;
    const/4 v2, 0x0

    .line 253
    .local v2, isChecked:Z
    if-eqz v7, :cond_2

    .line 254
    invoke-virtual {v7}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    .line 256
    :cond_2
    invoke-virtual {v6}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v3

    .line 258
    .local v3, isRecording:Z
    const/4 v1, 0x0

    .line 259
    .local v1, holdBtnisOn:Z
    const v11, 0x7f070075

    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 260
    .local v0, holdBtn:Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 261
    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v11, :cond_5

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    sget-boolean v11, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    if-eqz v11, :cond_5

    :cond_3
    move v8, v9

    .line 263
    .local v8, res:Z
    :goto_1
    if-nez v8, :cond_6

    .line 264
    sput-boolean v10, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    .line 265
    invoke-virtual {v4, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 269
    :cond_4
    :goto_2
    if-eqz v8, :cond_7

    sget-boolean v11, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    if-eqz v11, :cond_7

    move v8, v9

    .line 270
    :goto_3
    if-eqz v8, :cond_8

    .line 271
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v8           #res:Z
    :cond_5
    move v8, v10

    .line 261
    goto :goto_1

    .line 266
    .restart local v8       #res:Z
    :cond_6
    if-eqz v1, :cond_4

    .line 267
    sput-boolean v10, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    goto :goto_2

    :cond_7
    move v8, v10

    .line 269
    goto :goto_3

    .line 273
    :cond_8
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static Story46296_initOnResume(Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter "incallscreen"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 296
    .local v0, ics:Lcom/android/phone/InCallControlState;
    invoke-static {p0, v0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V

    .line 297
    return-void
.end method

.method static Story46296_onHoldClick(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "mCM"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 283
    .local v0, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 284
    .local v1, hasHoldingCall:Z
    const/4 v2, 0x0

    .line 285
    .local v2, isCDMA:Z
    if-eqz v0, :cond_3

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 290
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 291
    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    .line 292
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 286
    goto :goto_0

    .line 287
    :cond_3
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_4

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method static detectBusy(Z)V
    .locals 1
    .parameter "busy"

    .prologue
    .line 491
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->mMayBusy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    .line 492
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static displaySmallImage(Lcom/android/internal/telephony/Call;Landroid/view/View;)Z
    .locals 7
    .parameter "call"
    .parameter "ongoing"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 112
    sget v4, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    if-lez v4, :cond_1

    .line 113
    sget-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 131
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    if-eqz p0, :cond_0

    .line 116
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->getCallerInfo(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 117
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mViewMode:I

    if-nez v4, :cond_0

    .line 119
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    if-nez v4, :cond_3

    .line 120
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    move v2, v3

    .line 122
    goto :goto_0

    .line 124
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    .local v1, ctx:Landroid/content/Context;
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    iget v5, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    invoke-static {v1, v4, v5}, Lcom/android/phone/BaiduPhoneUtil;->isSmallPhoto(Landroid/content/Context;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    move v2, v3

    .line 129
    goto :goto_0
.end method

.method public static displaySmallImage(Lcom/android/internal/telephony/CallerInfo;Landroid/view/View;)Z
    .locals 6
    .parameter "ci"
    .parameter "ongoing"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    sget v3, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    if-lez v3, :cond_0

    .line 136
    sget-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 151
    :goto_0
    return v1

    .line 137
    :cond_0
    if-eqz p0, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mViewMode:I

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    if-nez v3, :cond_4

    .line 140
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 141
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    goto :goto_0

    .line 144
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, ctx:Landroid/content/Context;
    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    iget v4, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    invoke-static {v0, v3, v4}, Lcom/android/phone/BaiduPhoneUtil;->isSmallPhoto(Landroid/content/Context;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 147
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 148
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    goto :goto_0

    :cond_5
    move v1, v2

    .line 151
    goto :goto_0
.end method

.method static doInitStuffOnResume(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "incallscreen"

    .prologue
    .line 306
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_initOnResume(Lcom/android/phone/InCallScreen;)V

    .line 307
    return-void
.end method

.method static doRedial(Lcom/android/phone/InCallScreen;)Z
    .locals 5
    .parameter "ics"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 539
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->inAutoRedialList()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_redial"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 541
    .local v0, enable:Z
    :goto_0
    sget-object v3, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    sget v3, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    sget v4, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    if-ge v3, v4, :cond_1

    .line 542
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    sget-object v3, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 543
    sget-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mSpeakerOn:Z

    invoke-static {p0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 544
    sget v2, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 552
    :goto_1
    return v1

    .end local v0           #enable:Z
    :cond_0
    move v0, v2

    .line 539
    goto :goto_0

    .line 547
    .restart local v0       #enable:Z
    :cond_1
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget v1, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    sget v3, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    if-lt v1, v3, :cond_2

    .line 548
    sput-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    .line 549
    sput v2, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 550
    sput-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    :cond_2
    move v1, v2

    .line 552
    goto :goto_1
.end method

.method static expand(Landroid/view/View;ILcom/android/phone/InCallScreen;Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .parameter "v"
    .parameter "statusbarHeight"
    .parameter "ics"
    .parameter "mInCallPanel"
    .parameter "mInCallTouchUi"

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 345
    .local v0, density:F
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 346
    .local v1, hP:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    sub-int v3, v5, p1

    .line 347
    .local v3, targtetHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 348
    .local v2, startHeight:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 351
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    add-int v7, v2, v3

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 352
    .local v4, va:Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    new-instance v5, Lcom/android/phone/BaiduPhoneUtil$1;

    invoke-direct {v5, p0}, Lcom/android/phone/BaiduPhoneUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    new-instance v5, Lcom/android/phone/BaiduPhoneUtil$2;

    invoke-direct {v5, p4}, Lcom/android/phone/BaiduPhoneUtil$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 381
    return-void
.end method

.method static getCalleeAddress(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 610
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 619
    :goto_0
    if-nez v0, :cond_3

    .line 620
    const/4 v2, 0x0

    .line 622
    :goto_1
    return-object v2

    .line 612
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 616
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 622
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static getCallerInfo(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .parameter "call"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 84
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 85
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 94
    :goto_0
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 97
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 102
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v0

    .line 87
    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    .restart local v2       #o:Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_0

    .line 99
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getInstance()Lcom/android/phone/BaiduPhoneUtil;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/phone/BaiduPhoneUtil;->mInstance:Lcom/android/phone/BaiduPhoneUtil;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/phone/BaiduPhoneUtil;

    invoke-direct {v0}, Lcom/android/phone/BaiduPhoneUtil;-><init>()V

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->mInstance:Lcom/android/phone/BaiduPhoneUtil;

    .line 108
    :cond_0
    sget-object v0, Lcom/android/phone/BaiduPhoneUtil;->mInstance:Lcom/android/phone/BaiduPhoneUtil;

    return-object v0
.end method

.method static inAutoRedialList()Z
    .locals 11

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 504
    const/4 v8, 0x0

    .line 505
    .local v8, result:Z
    sget-object v0, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    move v8, v9

    .line 535
    .local v2, projection:[Ljava/lang/String;
    .local v3, selection:Ljava/lang/String;
    .local v4, selectionArgs:[Ljava/lang/String;
    .local v6, cursor:Landroid/database/Cursor;
    .local v7, phoneNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 507
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #phoneNumber:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 508
    .restart local v7       #phoneNumber:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "repeat"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "speaker"

    aput-object v1, v2, v0

    .line 511
    .restart local v2       #projection:[Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number, ?, 0)"

    .line 512
    .restart local v3       #selection:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object v7, v4, v9

    .line 514
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 518
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 519
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    const-string v0, "repeat"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 523
    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const v0, 0x5f5e0ff

    :goto_1
    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 524
    const-string v0, "speaker"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    move v9, v10

    :cond_2
    sput-boolean v9, Lcom/android/phone/BaiduPhoneUtil;->mSpeakerOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :cond_3
    const/4 v8, 0x1

    .line 530
    :cond_4
    if-eqz v6, :cond_0

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 532
    const/4 v6, 0x0

    goto :goto_0

    .line 523
    :cond_5
    :try_start_1
    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 530
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 532
    const/4 v6, 0x0

    :cond_6
    throw v0
.end method

.method public static insertToWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "subscriberId"
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 630
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "subscriber"

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 636
    return-void
.end method

.method static isAutoRecordEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 566
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 567
    .local v0, sp:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_ENABLE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isPhoneNumberValied(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v1

    .line 643
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, realNumber:Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 645
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 648
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isRecordNumberEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 571
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 572
    .local v0, sp:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/phone/BaiduPhoneUtil;->RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static isSmallPhoto(Landroid/content/Context;II)Z
    .locals 12
    .parameter "ctx"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v9, 0x1

    .line 166
    :goto_0
    return v9

    .line 157
    :cond_0
    const-string v9, "window"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 158
    .local v8, windowManager:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 159
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 160
    .local v6, screenWidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 161
    .local v5, screenHeight:I
    mul-int v9, p2, p1

    int-to-float v9, v9

    mul-int v10, v6, v5

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    mul-float/2addr v10, v11

    div-float v4, v9, v10

    .line 162
    .local v4, r:F
    int-to-float v9, v5

    const/high16 v10, 0x3f80

    mul-float/2addr v9, v10

    int-to-float v10, v6

    div-float v0, v9, v10

    .line 163
    .local v0, R:F
    int-to-float v9, p2

    const/high16 v10, 0x3f80

    mul-float/2addr v9, v10

    int-to-float v10, p1

    div-float v1, v9, v10

    .line 164
    .local v1, R1:F
    const/high16 v9, 0x3f00

    cmpg-float v9, v4, v9

    if-gez v9, :cond_2

    const/4 v7, 0x1

    .line 165
    .local v7, small:Z
    :goto_1
    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e4ccccd

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    const/4 v3, 0x1

    .line 166
    .local v3, dr:Z
    :goto_2
    if-nez v7, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 164
    .end local v3           #dr:Z
    .end local v7           #small:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 165
    .restart local v7       #small:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 166
    .restart local v3       #dr:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static isSmallPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 14
    .parameter "ctx"
    .parameter "bm"

    .prologue
    .line 170
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 171
    :cond_0
    const/4 v11, 0x1

    .line 183
    :goto_0
    return v11

    .line 172
    :cond_1
    const-string v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 173
    .local v10, windowManager:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 174
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 175
    .local v7, screenWidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 176
    .local v6, screenHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 177
    .local v9, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 178
    .local v4, h:I
    mul-int v11, v4, v9

    int-to-float v11, v11

    mul-int v12, v7, v6

    int-to-float v12, v12

    const/high16 v13, 0x3f80

    mul-float/2addr v12, v13

    div-float v5, v11, v12

    .line 179
    .local v5, r:F
    int-to-float v11, v6

    const/high16 v12, 0x3f80

    mul-float/2addr v11, v12

    int-to-float v12, v7

    div-float v0, v11, v12

    .line 180
    .local v0, R:F
    int-to-float v11, v4

    const/high16 v12, 0x3f80

    mul-float/2addr v11, v12

    int-to-float v12, v9

    div-float v1, v11, v12

    .line 181
    .local v1, R1:F
    const/high16 v11, 0x3f00

    cmpg-float v11, v5, v11

    if-gez v11, :cond_3

    const/4 v8, 0x1

    .line 182
    .local v8, small:Z
    :goto_1
    sub-float v11, v0, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3e4ccccd

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    const/4 v3, 0x1

    .line 183
    .local v3, dr:Z
    :goto_2
    if-nez v8, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    .line 181
    .end local v3           #dr:Z
    .end local v8           #small:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 182
    .restart local v8       #small:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 183
    .restart local v3       #dr:Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_0
.end method

.method static mayBusy(Z)V
    .locals 1
    .parameter "mbusy"

    .prologue
    const/4 v0, 0x0

    .line 495
    sput-boolean p0, Lcom/android/phone/BaiduPhoneUtil;->mMayBusy:Z

    .line 496
    if-nez p0, :cond_0

    .line 497
    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 498
    sput-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 500
    :cond_0
    return-void
.end method

.method static onAnswerInComingCall(Lcom/android/phone/BaiduInCallTouchUi;)V
    .locals 0
    .parameter "inCallTouchUi"

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->doAcceptCallAnimation()V

    .line 388
    return-void
.end method

.method static varargs onEndInCallSession([Ljava/lang/Object;)V
    .locals 2
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 391
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    .line 392
    sput v1, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 393
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 394
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mSpeakerOn:Z

    .line 395
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 396
    return-void
.end method

.method static varargs onInCallScreenAudioRecordTimerStart([Ljava/lang/Object;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 320
    return-void
.end method

.method static varargs onInCallScreenAudioRecordTimerStop([Ljava/lang/Object;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 311
    const/4 v2, 0x0

    aget-object v1, p0, v2

    check-cast v1, Lcom/android/phone/InCallScreen;

    .line 312
    .local v1, incallscreen:Lcom/android/phone/InCallScreen;
    const/4 v2, 0x1

    aget-object v0, p0, v2

    check-cast v0, Lcom/android/phone/InCallControlState;

    .line 313
    .local v0, ics:Lcom/android/phone/InCallControlState;
    invoke-static {v1, v0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V

    .line 314
    return-void
.end method

.method static varargs onYellowInfoLoadComplete([Ljava/lang/Object;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 324
    aget-object v0, p0, v5

    check-cast v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 325
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    aget-object v1, p0, v6

    check-cast v1, Lcom/android/phone/InCallScreen;

    .line 326
    .local v1, mInCallScreen:Lcom/android/phone/InCallScreen;
    const/4 v4, 0x2

    aget-object v2, p0, v4

    check-cast v2, Landroid/view/ViewGroup;

    .line 329
    .local v2, mPrimaryCallInfo:Landroid/view/ViewGroup;
    iget v4, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    if-ne v4, v6, :cond_0

    .line 330
    const v4, 0x7f07003d

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 331
    .local v3, ongoing:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 332
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 334
    .end local v3           #ongoing:Landroid/view/View;
    :cond_0
    return-void
.end method

.method static playVibrator(Landroid/content/Context;Landroid/os/Vibrator;)V
    .locals 5
    .parameter "context"
    .parameter "vibrator"

    .prologue
    const/4 v4, 0x1

    .line 467
    const/4 v0, 0x1

    .line 469
    .local v0, enable:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 473
    :goto_0
    if-ne v0, v4, :cond_0

    .line 474
    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 476
    :cond_0
    return-void

    .line 470
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static varargs preventShowDialpad([Ljava/lang/Object;)V
    .locals 6
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 451
    array-length v2, p0

    if-nez v2, :cond_1

    .line 452
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    aget-object v2, p0, v5

    if-eqz v2, :cond_5

    aget-object v2, p0, v5

    check-cast v2, Lcom/android/internal/telephony/Call;

    move-object v1, v2

    .line 455
    .local v1, fg:Lcom/android/internal/telephony/Call;
    :goto_1
    aget-object v2, p0, v4

    if-eqz v2, :cond_6

    aget-object v2, p0, v4

    check-cast v2, Lcom/android/internal/telephony/Call;

    move-object v0, v2

    .line 456
    .local v0, bg:Lcom/android/internal/telephony/Call;
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    .line 458
    :cond_2
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 459
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 461
    :cond_4
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    goto :goto_0

    .end local v0           #bg:Lcom/android/internal/telephony/Call;
    .end local v1           #fg:Lcom/android/internal/telephony/Call;
    :cond_5
    move-object v1, v3

    .line 454
    goto :goto_1

    .restart local v1       #fg:Lcom/android/internal/telephony/Call;
    :cond_6
    move-object v0, v3

    .line 455
    goto :goto_2
.end method

.method static registerAccelero()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 187
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_mute"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 190
    .local v1, mute:I
    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 193
    .local v2, sm:Landroid/hardware/SensorManager;
    sget-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    if-nez v3, :cond_0

    .line 194
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->getInstance()Lcom/android/phone/BaiduPhoneUtil;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 196
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    .line 197
    const/4 v3, 0x0

    sput v3, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    goto :goto_0
.end method

.method static setRedialIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "it"

    .prologue
    .line 487
    sput-object p0, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    .line 488
    return-void
.end method

.method static shouldRecord(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 576
    const/4 v2, 0x0

    .line 577
    .local v2, result:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 578
    .local v3, sp:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_ENABLE_KEY:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 580
    if-eqz v2, :cond_0

    .line 581
    sget-object v4, Lcom/android/phone/BaiduPhoneUtil;->RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 582
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 583
    invoke-static {p0, p1}, Lcom/android/phone/AutoRecordListActivity;->existedInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 584
    .local v1, exist:Z
    if-nez v1, :cond_0

    .line 585
    const/4 v2, 0x0

    .line 590
    .end local v0           #enable:Z
    .end local v1           #exist:Z
    :cond_0
    return v2
.end method

.method static varargs showDTMFforServiceNumber([Ljava/lang/Object;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    .line 434
    sget-boolean v5, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    if-eqz v5, :cond_1

    .line 435
    sput-boolean v6, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    aget-object v1, p0, v6

    check-cast v1, Lcom/android/phone/InCallScreen;

    .line 439
    .local v1, ics:Lcom/android/phone/InCallScreen;
    const/4 v5, 0x1

    aget-object v5, p0, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 440
    .local v2, isYellowPage:Z
    const/4 v5, 0x2

    aget-object v4, p0, v5

    check-cast v4, Ljava/lang/String;

    .line 441
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 442
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v4, :cond_0

    .line 444
    sget-object v5, Lcom/android/phone/BaiduPhoneUtil;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 445
    .local v3, matcher:Ljava/util/regex/Matcher;
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v5, v5, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v5, :cond_0

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    :cond_2
    const v5, 0x7f070072

    invoke-virtual {v1, v5}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0
.end method

.method static startAcceptCallAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "btns"

    .prologue
    const/4 v2, 0x0

    .line 337
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 338
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 339
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    return-void
.end method

.method static varargs startAutoRecord([Ljava/lang/Object;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 594
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v2

    .line 596
    .local v2, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-virtual {v2}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v1

    .line 597
    .local v1, isRecording:Z
    if-eqz v1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 600
    :cond_0
    const-string v3, "BaiduPhoneUtil"

    const-string v4, "startAutoRecord begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v3, 0x0

    aget-object v0, p0, v3

    check-cast v0, Lcom/android/phone/InCallScreen;

    .line 603
    .local v0, ics:Lcom/android/phone/InCallScreen;
    const v3, 0x7f070068

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 604
    const-string v3, "BaiduPhoneUtil"

    const-string v4, "startAutoRecord end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static unregisterAccelero()V
    .locals 3

    .prologue
    .line 202
    sget-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    if-eqz v2, :cond_0

    .line 203
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    .local v0, ctx:Landroid/content/Context;
    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 205
    .local v1, sm:Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->getInstance()Lcom/android/phone/BaiduPhoneUtil;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 206
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    .line 209
    :cond_0
    return-void
.end method

.method public static updatePhoneLabelDisplay(Landroid/widget/TextView;)V
    .locals 3
    .parameter "vLabel"

    .prologue
    .line 653
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 654
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 655
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    const/high16 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    const/high16 v1, 0x4190

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 663
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 659
    .restart local v0       #text:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    const/high16 v1, 0x4160

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method static varargs updateRedialUI([Ljava/lang/Object;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 557
    aget-object v0, p0, v6

    check-cast v0, Landroid/content/Context;

    .line 558
    .local v0, ctx:Landroid/content/Context;
    aget-object v1, p0, v4

    check-cast v1, Landroid/widget/TextView;

    .line 559
    .local v1, label:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget v3, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    if-lez v3, :cond_0

    sget-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    if-eqz v3, :cond_0

    .line 560
    const v3, 0x7f0b0446

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, txt:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .end local v2           #txt:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static updateSmartPhotoForPerson(JLandroid/widget/ImageView;)V
    .locals 8
    .parameter "personId"
    .parameter "photo"

    .prologue
    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.Contacts.CallLocation/display_photo/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 412
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 414
    .local v3, fd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 418
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    move-object v0, p2

    check-cast v0, Lcom/android/phone/InCallContactPhotoEx;

    move-object v5, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/phone/InCallContactPhotoEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 420
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 422
    .restart local v3       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const v5, 0x7f0201db

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v3           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v2

    .line 426
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static willLoadSmartPhoto(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "ci"

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->mViewMode:I

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 214
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 3
    .parameter "arg0"
    .parameter "values"

    .prologue
    const/high16 v2, 0x4040

    const/4 v0, 0x2

    .line 219
    monitor-enter p0

    .line 220
    if-ne p1, v0, :cond_0

    .line 221
    :try_start_0
    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    const/4 v1, 0x2

    aget v1, p2, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x2

    aget v0, p2, v0

    :goto_0
    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    .line 229
    const/4 v0, 0x2

    aget v0, p2, v0

    const/high16 v1, 0x4110

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    const/high16 v1, -0x3fc0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    aget v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 232
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->unregisterAccelero()V

    .line 233
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 237
    :cond_0
    monitor-exit p0

    .line 238
    return-void

    .line 221
    :cond_1
    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
