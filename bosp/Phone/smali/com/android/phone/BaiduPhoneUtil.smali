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

.field private static BAIDUDEBUG:Z = false

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

.field static isBottomAnimationDone:Z

.field static isHalfViewFolded:Z

.field private static isHalfViewPreResume:Z

.field private static isHoldBtnClick:Z

.field static isInExpanding:Z

.field static isInHalfInCallMode:Z

.field static isInSession:Z

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

    .line 60
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    .line 65
    sput-object v2, Lcom/android/phone/BaiduPhoneUtil;->mInstance:Lcom/android/phone/BaiduPhoneUtil;

    .line 73
    const-string v0, "button_auto_record_enable"

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_ENABLE_KEY:Ljava/lang/String;

    .line 74
    const-string v0, "auto_record_for_white_enable"

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String;

    .line 75
    const-string v0, "auto_record_white_list"

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_WHITE_LIST:Ljava/lang/String;

    .line 78
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewPreResume:Z

    .line 268
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    .line 269
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    .line 517
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isInHalfInCallMode:Z

    .line 518
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isInExpanding:Z

    .line 519
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isInSession:Z

    .line 520
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewFolded:Z

    .line 521
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isBottomAnimationDone:Z

    .line 605
    const-string v0, "^800\\d*|^400\\d*|10\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->pattern:Ljava/util/regex/Pattern;

    .line 606
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 639
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->BAIDUDEBUG:Z

    .line 659
    sput-object v2, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    .line 660
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 661
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    .line 662
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mMayBusy:Z

    .line 663
    sput v1, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 664
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mSpeakerOn:Z

    .line 665
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V
    .locals 11
    .parameter "incallscreen"
    .parameter "ics"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 242
    const v10, 0x7f07008d

    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 243
    .local v4, mbuttons:Landroid/view/View;
    const v10, 0x7f070097

    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 245
    .local v3, mB:Landroid/widget/ToggleButton;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v5

    .line 247
    .local v5, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    const v10, 0x7f070093

    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    .line 248
    .local v6, rc:Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isRecording()Z

    move-result v2

    .line 250
    .local v2, isRecording:Z
    const/4 v1, 0x0

    .line 251
    .local v1, holdBtnisOn:Z
    const v10, 0x7f07008e

    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 252
    .local v0, holdBtn:Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 253
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v10, :cond_2

    if-nez v2, :cond_0

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez v1, :cond_0

    sget-boolean v10, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    if-eqz v10, :cond_2

    :cond_0
    move v7, v8

    .line 255
    .local v7, res:Z
    :goto_0
    if-nez v7, :cond_3

    .line 256
    sput-boolean v9, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    .line 257
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 261
    :cond_1
    :goto_1
    if-eqz v7, :cond_4

    sget-boolean v10, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    if-eqz v10, :cond_4

    move v7, v8

    .line 262
    :goto_2
    if-eqz v7, :cond_5

    .line 263
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_3
    return-void

    .end local v7           #res:Z
    :cond_2
    move v7, v9

    .line 253
    goto :goto_0

    .line 258
    .restart local v7       #res:Z
    :cond_3
    if-eqz v1, :cond_1

    .line 259
    sput-boolean v9, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    goto :goto_1

    :cond_4
    move v7, v9

    .line 261
    goto :goto_2

    .line 265
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method static Story46296_initOnResume(Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter "incallscreen"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 288
    .local v0, ics:Lcom/android/phone/InCallControlState;
    invoke-static {p0, v0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V

    .line 289
    return-void
.end method

.method static Story46296_onHoldClick(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "mCM"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 275
    .local v0, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 276
    .local v1, hasHoldingCall:Z
    const/4 v2, 0x0

    .line 277
    .local v2, isCDMA:Z
    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 282
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 283
    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->isHoldBtnClick:Z

    .line 284
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 278
    goto :goto_0

    .line 279
    :cond_3
    if-eqz v1, :cond_0

    .line 280
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
    .line 672
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->mMayBusy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    .line 673
    return-void

    .line 672
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

    .line 111
    sget v4, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    if-lez v4, :cond_1

    .line 112
    sget-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 130
    :cond_0
    :goto_0
    return v2

    .line 113
    :cond_1
    if-eqz p0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->getCallerInfo(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 116
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mViewMode:I

    if-nez v4, :cond_0

    .line 118
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    if-nez v4, :cond_3

    .line 119
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 120
    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    move v2, v3

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    .local v1, ctx:Landroid/content/Context;
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    iget v5, v0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    invoke-static {v1, v4, v5}, Lcom/android/phone/BaiduPhoneUtil;->isSmallPhoto(Landroid/content/Context;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    move v2, v3

    .line 128
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

    .line 134
    sget v3, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    if-lez v3, :cond_0

    .line 135
    sget-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 150
    :goto_0
    return v1

    .line 136
    :cond_0
    if-eqz p0, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mViewMode:I

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    if-nez v3, :cond_4

    .line 139
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 140
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    goto :goto_0

    .line 143
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, ctx:Landroid/content/Context;
    iget v3, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    iget v4, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    invoke-static {v0, v3, v4}, Lcom/android/phone/BaiduPhoneUtil;->isSmallPhoto(Landroid/content/Context;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 146
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    goto :goto_0

    :cond_5
    move v1, v2

    .line 150
    goto :goto_0
.end method

.method static doInitStuffOnResume(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "incallscreen"

    .prologue
    .line 298
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_initOnResume(Lcom/android/phone/InCallScreen;)V

    .line 299
    return-void
.end method

.method static doRedial(Lcom/android/phone/InCallScreen;)Z
    .locals 5
    .parameter "ics"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 720
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

    .line 722
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

    .line 723
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    sget-object v3, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 724
    sget-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mSpeakerOn:Z

    invoke-static {p0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 725
    sget v2, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 733
    :goto_1
    return v1

    .end local v0           #enable:Z
    :cond_0
    move v0, v2

    .line 720
    goto :goto_0

    .line 728
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

    .line 729
    sput-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    .line 730
    sput v2, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 731
    sput-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    :cond_2
    move v1, v2

    .line 733
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
    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 452
    .local v0, density:F
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 453
    .local v1, hP:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    sub-int v3, v5, p1

    .line 454
    .local v3, targtetHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    .local v2, startHeight:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 457
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    add-int v7, v2, v3

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 458
    .local v4, va:Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    new-instance v5, Lcom/android/phone/BaiduPhoneUtil$1;

    invoke-direct {v5, p0}, Lcom/android/phone/BaiduPhoneUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 467
    new-instance v5, Lcom/android/phone/BaiduPhoneUtil$2;

    invoke-direct {v5, p0, p2, p3, p4}, Lcom/android/phone/BaiduPhoneUtil$2;-><init>(Landroid/view/View;Lcom/android/phone/InCallScreen;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 514
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 515
    return-void
.end method

.method static getCalleeAddress(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 791
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 800
    :goto_0
    if-nez v0, :cond_3

    .line 801
    const/4 v2, 0x0

    .line 803
    :goto_1
    return-object v2

    .line 793
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 797
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

    .line 803
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static getCallerInfo(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .parameter "call"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 83
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 84
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 93
    :goto_0
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 96
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 101
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v0

    .line 86
    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 90
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

    .line 97
    .restart local v2       #o:Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_0

    .line 98
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getInstance()Lcom/android/phone/BaiduPhoneUtil;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/phone/BaiduPhoneUtil;->mInstance:Lcom/android/phone/BaiduPhoneUtil;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/phone/BaiduPhoneUtil;

    invoke-direct {v0}, Lcom/android/phone/BaiduPhoneUtil;-><init>()V

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->mInstance:Lcom/android/phone/BaiduPhoneUtil;

    .line 107
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

    .line 685
    const/4 v8, 0x0

    .line 686
    .local v8, result:Z
    sget-object v0, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    move v8, v9

    .line 716
    .local v2, projection:[Ljava/lang/String;
    .local v3, selection:Ljava/lang/String;
    .local v4, selectionArgs:[Ljava/lang/String;
    .local v6, cursor:Landroid/database/Cursor;
    .local v7, phoneNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 688
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

    .line 689
    .restart local v7       #phoneNumber:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "repeat"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "speaker"

    aput-object v1, v2, v0

    .line 692
    .restart local v2       #projection:[Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number, ?, 0)"

    .line 693
    .restart local v3       #selection:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object v7, v4, v9

    .line 695
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

    .line 699
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 700
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 701
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    const-string v0, "repeat"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 704
    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const v0, 0x5f5e0ff

    :goto_1
    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 705
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

    .line 708
    :cond_3
    const/4 v8, 0x1

    .line 711
    :cond_4
    if-eqz v6, :cond_0

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 713
    const/4 v6, 0x0

    goto :goto_0

    .line 704
    :cond_5
    :try_start_1
    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 711
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 713
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
    .line 811
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "subscriber"

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v1, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 817
    return-void
.end method

.method static isAutoRecordEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 747
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 748
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

    .line 820
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v1

    .line 824
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, realNumber:Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 829
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
    .line 752
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 753
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
    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v9, 0x1

    .line 165
    :goto_0
    return v9

    .line 156
    :cond_0
    const-string v9, "window"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 157
    .local v8, windowManager:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 158
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 159
    .local v6, screenWidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 160
    .local v5, screenHeight:I
    mul-int v9, p2, p1

    int-to-float v9, v9

    mul-int v10, v6, v5

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    mul-float/2addr v10, v11

    div-float v4, v9, v10

    .line 161
    .local v4, r:F
    int-to-float v9, v5

    const/high16 v10, 0x3f80

    mul-float/2addr v9, v10

    int-to-float v10, v6

    div-float v0, v9, v10

    .line 162
    .local v0, R:F
    int-to-float v9, p2

    const/high16 v10, 0x3f80

    mul-float/2addr v9, v10

    int-to-float v10, p1

    div-float v1, v9, v10

    .line 163
    .local v1, R1:F
    const/high16 v9, 0x3f00

    cmpg-float v9, v4, v9

    if-gez v9, :cond_2

    const/4 v7, 0x1

    .line 164
    .local v7, small:Z
    :goto_1
    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e4ccccd

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    const/4 v3, 0x1

    .line 165
    .local v3, dr:Z
    :goto_2
    if-nez v7, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 163
    .end local v3           #dr:Z
    .end local v7           #small:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 164
    .restart local v7       #small:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 165
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
    .line 169
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    const/4 v11, 0x1

    .line 182
    :goto_0
    return v11

    .line 171
    :cond_1
    const-string v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 172
    .local v10, windowManager:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 173
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 174
    .local v7, screenWidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 175
    .local v6, screenHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 176
    .local v9, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 177
    .local v4, h:I
    mul-int v11, v4, v9

    int-to-float v11, v11

    mul-int v12, v7, v6

    int-to-float v12, v12

    const/high16 v13, 0x3f80

    mul-float/2addr v12, v13

    div-float v5, v11, v12

    .line 178
    .local v5, r:F
    int-to-float v11, v6

    const/high16 v12, 0x3f80

    mul-float/2addr v11, v12

    int-to-float v12, v7

    div-float v0, v11, v12

    .line 179
    .local v0, R:F
    int-to-float v11, v4

    const/high16 v12, 0x3f80

    mul-float/2addr v11, v12

    int-to-float v12, v9

    div-float v1, v11, v12

    .line 180
    .local v1, R1:F
    const/high16 v11, 0x3f00

    cmpg-float v11, v5, v11

    if-gez v11, :cond_3

    const/4 v8, 0x1

    .line 181
    .local v8, small:Z
    :goto_1
    sub-float v11, v0, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3e4ccccd

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    const/4 v3, 0x1

    .line 182
    .local v3, dr:Z
    :goto_2
    if-nez v8, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    .line 180
    .end local v3           #dr:Z
    .end local v8           #small:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 181
    .restart local v8       #small:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 182
    .restart local v3       #dr:Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 642
    sget-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->BAIDUDEBUG:Z

    if-eqz v0, :cond_0

    .line 643
    const-string v0, "***PhoneAPP***"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    return-void
.end method

.method static mayBusy(Z)V
    .locals 1
    .parameter "mbusy"

    .prologue
    const/4 v0, 0x0

    .line 676
    sput-boolean p0, Lcom/android/phone/BaiduPhoneUtil;->mMayBusy:Z

    .line 677
    if-nez p0, :cond_0

    .line 678
    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 679
    sput-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 681
    :cond_0
    return-void
.end method

.method static varargs onAnswerInComingCall([Ljava/lang/Object;)V
    .locals 9
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 525
    aget-object v2, p0, v6

    check-cast v2, Lcom/android/phone/InCallScreen;

    .line 526
    .local v2, ics:Lcom/android/phone/InCallScreen;
    aget-object v3, p0, v5

    check-cast v3, Lcom/android/phone/InCallTouchUi;

    .line 528
    .local v3, mInCallTouchUi:Lcom/android/phone/InCallTouchUi;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    .local v0, c:Landroid/content/Context;
    const-string v7, "keyguard"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 534
    .local v4, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "half_view"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v1, v5

    .line 537
    .local v1, enabled:Z
    :goto_1
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v1, :cond_3

    sget-boolean v7, Lcom/android/phone/BaiduPhoneUtil;->isBottomAnimationDone:Z

    if-nez v7, :cond_3

    :goto_2
    sput-boolean v5, Lcom/android/phone/BaiduPhoneUtil;->isInHalfInCallMode:Z

    .line 539
    sget-boolean v5, Lcom/android/phone/BaiduPhoneUtil;->isInHalfInCallMode:Z

    if-nez v5, :cond_0

    .line 540
    invoke-virtual {v3}, Lcom/android/phone/InCallTouchUi;->doAcceptCallAnimation()V

    goto :goto_0

    .end local v1           #enabled:Z
    :cond_2
    move v1, v6

    .line 534
    goto :goto_1

    .restart local v1       #enabled:Z
    :cond_3
    move v5, v6

    .line 537
    goto :goto_2
.end method

.method static varargs onEndInCallSession([Ljava/lang/Object;)V
    .locals 2
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 559
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isInSession:Z

    .line 560
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isBottomAnimationDone:Z

    .line 561
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    .line 562
    sput v1, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    .line 563
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/BaiduPhoneUtil;->mRedialCount:I

    .line 564
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->mSpeakerOn:Z

    .line 565
    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->bIsSmallPhoto:Z

    .line 566
    return-void
.end method

.method static varargs onHalfViewFolded([Ljava/lang/Object;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 569
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->isInSession:Z

    .line 570
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewFolded:Z

    .line 571
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 572
    return-void
.end method

.method static varargs onInCallScreenAudioRecordTimerStart([Ljava/lang/Object;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 312
    return-void
.end method

.method static varargs onInCallScreenAudioRecordTimerStop([Ljava/lang/Object;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 303
    const/4 v2, 0x0

    aget-object v1, p0, v2

    check-cast v1, Lcom/android/phone/InCallScreen;

    .line 304
    .local v1, incallscreen:Lcom/android/phone/InCallScreen;
    const/4 v2, 0x1

    aget-object v0, p0, v2

    check-cast v0, Lcom/android/phone/InCallControlState;

    .line 305
    .local v0, ics:Lcom/android/phone/InCallControlState;
    invoke-static {v1, v0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V

    .line 306
    return-void
.end method

.method static varargs onInCallScreenPreResume([Ljava/lang/Object;)V
    .locals 27
    .parameter "args"

    .prologue
    .line 347
    const/16 v23, 0x0

    aget-object v11, p0, v23

    check-cast v11, Lcom/android/phone/InCallScreen;

    .line 348
    .local v11, ics:Lcom/android/phone/InCallScreen;
    const/16 v23, 0x1

    aget-object v14, p0, v23

    check-cast v14, Lcom/android/internal/telephony/CallManager;

    .line 349
    .local v14, mCM:Lcom/android/internal/telephony/CallManager;
    const/16 v23, 0x2

    aget-object v15, p0, v23

    check-cast v15, Landroid/view/View;

    .line 350
    .local v15, mInCallPanel:Landroid/view/View;
    const/16 v23, 0x3

    aget-object v16, p0, v23

    check-cast v16, Landroid/view/View;

    .line 352
    .local v16, mInCallTouchUi:Landroid/view/View;
    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 354
    .local v4, c:Landroid/content/Context;
    const-string v23, "keyguard"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    .line 355
    .local v17, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual/range {v17 .. v17}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v23

    if-nez v23, :cond_3

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    sget-boolean v23, Lcom/android/phone/BaiduPhoneUtil;->isInSession:Z

    if-nez v23, :cond_3

    const/16 v18, 0x1

    .line 358
    .local v18, state:Z
    :goto_0
    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "half_view"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 360
    .local v8, enabled:Z
    :goto_1
    if-eqz v18, :cond_5

    if-eqz v8, :cond_5

    .line 361
    const v23, 0x7f0e001d

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->setTheme(I)V

    .line 362
    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/high16 v24, 0x10

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->clearFlags(I)V

    .line 368
    :goto_2
    sget-object v23, Lcom/android/phone/PhoneApp;->mInCallView:Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    .line 369
    .local v21, vp:Landroid/view/ViewParent;
    if-eqz v21, :cond_0

    .line 370
    check-cast v21, Landroid/widget/FrameLayout;

    .end local v21           #vp:Landroid/view/ViewParent;
    sget-object v23, Lcom/android/phone/PhoneApp;->mInCallView:Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 371
    :cond_0
    sget-object v23, Lcom/android/phone/PhoneApp;->mInCallView:Landroid/view/View;

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->setContentView(Landroid/view/View;)V

    .line 373
    const v23, 0x7f07007a

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 374
    .local v10, half_incall:Landroid/widget/FrameLayout;
    if-eqz v18, :cond_6

    if-eqz v8, :cond_6

    .line 375
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewPreResume:Z

    .line 376
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 377
    .local v22, vpt:Landroid/view/ViewParent;
    check-cast v22, Landroid/widget/FrameLayout;

    .end local v22           #vpt:Landroid/view/ViewParent;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 378
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 379
    .restart local v22       #vpt:Landroid/view/ViewParent;
    check-cast v22, Landroid/widget/FrameLayout;

    .end local v22           #vpt:Landroid/view/ViewParent;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 380
    invoke-virtual {v10, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 381
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 384
    const v23, 0x7f07007b

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 385
    .local v6, closeHandler:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 386
    .local v7, closeParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 387
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    .line 390
    const v23, 0x7f07007c

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 391
    .local v5, closeExpand:Landroid/view/View;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    const v23, 0x7f07007d

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/baidu/multiwaveview/MultiWaveView;

    .line 396
    .local v12, iw:Lcom/baidu/multiwaveview/MultiWaveView;
    invoke-virtual {v12}, Lcom/baidu/multiwaveview/MultiWaveView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 397
    .local v13, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 398
    const/16 v23, 0xd

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 399
    const/16 v23, 0xc

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 400
    invoke-virtual {v12, v13}, Lcom/baidu/multiwaveview/MultiWaveView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->setBackgroundResource(I)V

    .line 402
    invoke-virtual {v12}, Lcom/baidu/multiwaveview/MultiWaveView;->getVOffset()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->setTag(Ljava/lang/Object;)V

    .line 403
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->setOffset(FF)V

    .line 404
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->hideChevron(ZZZZ)V

    .line 435
    .end local v6           #closeHandler:Landroid/view/View;
    .end local v7           #closeParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_3
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/phone/BaiduPhoneUtil;->isInSession:Z

    .line 436
    sget-boolean v23, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewFolded:Z

    if-eqz v23, :cond_2

    .line 437
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 438
    :cond_2
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewFolded:Z

    .line 439
    return-void

    .line 355
    .end local v5           #closeExpand:Landroid/view/View;
    .end local v8           #enabled:Z
    .end local v10           #half_incall:Landroid/widget/FrameLayout;
    .end local v12           #iw:Lcom/baidu/multiwaveview/MultiWaveView;
    .end local v13           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18           #state:Z
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 358
    .restart local v18       #state:Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 365
    .restart local v8       #enabled:Z
    :cond_5
    const v23, 0x7f0e001c

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->setTheme(I)V

    .line 366
    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/high16 v24, 0x10

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_2

    .line 407
    .restart local v10       #half_incall:Landroid/widget/FrameLayout;
    :cond_6
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewPreResume:Z

    .line 408
    const v23, 0x7f070071

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 409
    .local v9, full_incall:Landroid/widget/FrameLayout;
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 410
    .restart local v22       #vpt:Landroid/view/ViewParent;
    check-cast v22, Landroid/widget/FrameLayout;

    .end local v22           #vpt:Landroid/view/ViewParent;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 411
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 412
    .restart local v22       #vpt:Landroid/view/ViewParent;
    check-cast v22, Landroid/widget/FrameLayout;

    .end local v22           #vpt:Landroid/view/ViewParent;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 413
    invoke-virtual {v9, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 414
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 415
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 417
    const v23, 0x7f07007c

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 418
    .restart local v5       #closeExpand:Landroid/view/View;
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const v23, 0x7f07007d

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/baidu/multiwaveview/MultiWaveView;

    .line 422
    .restart local v12       #iw:Lcom/baidu/multiwaveview/MultiWaveView;
    invoke-virtual {v12}, Lcom/baidu/multiwaveview/MultiWaveView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 423
    .restart local v13       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    const/high16 v24, -0x3dc8

    mul-float v23, v23, v24

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 424
    const/16 v23, 0xd

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 425
    const/16 v23, 0xc

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 426
    invoke-virtual {v12, v13}, Lcom/baidu/multiwaveview/MultiWaveView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    const v23, 0x7f0200f4

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->setBackgroundResource(I)V

    .line 428
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->hideChevron(ZZZZ)V

    .line 429
    invoke-virtual {v12}, Lcom/baidu/multiwaveview/MultiWaveView;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 430
    .local v19, tag:Ljava/lang/Object;
    if-eqz v19, :cond_1

    .line 431
    check-cast v19, Ljava/lang/Float;

    .end local v19           #tag:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 432
    .local v20, voff:F
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->setOffset(FF)V

    goto/16 :goto_3
.end method

.method static varargs onShowInComingCallWidget([Ljava/lang/Object;)V
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 329
    aget-object v6, p0, v8

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 330
    .local v0, allowsms:Z
    aget-object v3, p0, v7

    check-cast v3, Lcom/baidu/multiwaveview/MultiWaveView;

    .line 331
    .local v3, iw:Lcom/baidu/multiwaveview/MultiWaveView;
    aget-object v2, p0, v10

    check-cast v2, Lcom/android/phone/InCallScreen;

    .line 332
    .local v2, ics:Lcom/android/phone/InCallScreen;
    const-string v6, "keyguard"

    invoke-virtual {v2, v6}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 334
    .local v4, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_1

    move v5, v7

    .line 335
    .local v5, state:Z
    :goto_0
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "half_view"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v1, v7

    .line 338
    .local v1, enabled:Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    sget-boolean v6, Lcom/android/phone/BaiduPhoneUtil;->isHalfViewPreResume:Z

    if-eqz v6, :cond_0

    .line 339
    const v6, 0x7f060009

    invoke-virtual {v3, v6}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 340
    const v6, 0x7f06000a

    invoke-virtual {v3, v6}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 341
    const v6, 0x7f06000b

    invoke-virtual {v3, v6}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 343
    :cond_0
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v3, v6, v7

    invoke-static {v6}, Lcom/android/phone/BaiduDualCardLogic;->onShowInComingCallWidget([Ljava/lang/Object;)V

    .line 344
    return-void

    .end local v1           #enabled:Z
    .end local v5           #state:Z
    :cond_1
    move v5, v8

    .line 334
    goto :goto_0

    .restart local v5       #state:Z
    :cond_2
    move v1, v8

    .line 335
    goto :goto_1
.end method

.method static varargs onYellowInfoLoadComplete([Ljava/lang/Object;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    aget-object v0, p0, v5

    check-cast v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 317
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    aget-object v1, p0, v6

    check-cast v1, Lcom/android/phone/InCallScreen;

    .line 318
    .local v1, mInCallScreen:Lcom/android/phone/InCallScreen;
    const/4 v4, 0x2

    aget-object v2, p0, v4

    check-cast v2, Landroid/view/ViewGroup;

    .line 321
    .local v2, mPrimaryCallInfo:Landroid/view/ViewGroup;
    iget v4, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    if-ne v4, v6, :cond_0

    .line 322
    const v4, 0x7f070022

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 323
    .local v3, ongoing:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
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

    .line 648
    const/4 v0, 0x1

    .line 650
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

    .line 654
    :goto_0
    if-ne v0, v4, :cond_0

    .line 655
    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 657
    :cond_0
    return-void

    .line 651
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

    .line 624
    array-length v2, p0

    if-nez v2, :cond_1

    .line 625
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    aget-object v2, p0, v5

    if-eqz v2, :cond_5

    aget-object v2, p0, v5

    check-cast v2, Lcom/android/internal/telephony/Call;

    move-object v1, v2

    .line 628
    .local v1, fg:Lcom/android/internal/telephony/Call;
    :goto_1
    aget-object v2, p0, v4

    if-eqz v2, :cond_6

    aget-object v2, p0, v4

    check-cast v2, Lcom/android/internal/telephony/Call;

    move-object v0, v2

    .line 629
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

    .line 631
    :cond_2
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 632
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

    .line 634
    :cond_4
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    goto :goto_0

    .end local v0           #bg:Lcom/android/internal/telephony/Call;
    .end local v1           #fg:Lcom/android/internal/telephony/Call;
    :cond_5
    move-object v1, v3

    .line 627
    goto :goto_1

    .restart local v1       #fg:Lcom/android/internal/telephony/Call;
    :cond_6
    move-object v0, v3

    .line 628
    goto :goto_2
.end method

.method static registerAccelero()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 186
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_mute"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 189
    .local v1, mute:I
    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 192
    .local v2, sm:Landroid/hardware/SensorManager;
    sget-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    if-nez v3, :cond_0

    .line 193
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->getInstance()Lcom/android/phone/BaiduPhoneUtil;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 195
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    .line 196
    const/4 v3, 0x0

    sput v3, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    goto :goto_0
.end method

.method static setRedialIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "it"

    .prologue
    .line 668
    sput-object p0, Lcom/android/phone/BaiduPhoneUtil;->mDialIntent:Landroid/content/Intent;

    .line 669
    return-void
.end method

.method static varargs shouldDelayUpdateScreen([Ljava/lang/Object;)Z
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 545
    const/4 v5, 0x0

    aget-object v1, p0, v5

    check-cast v1, Lcom/android/phone/InCallScreen;

    .line 546
    .local v1, ics:Lcom/android/phone/InCallScreen;
    aget-object v2, p0, v6

    check-cast v2, Landroid/view/View;

    .line 547
    .local v2, mInCallPanel:Landroid/view/View;
    const/4 v5, 0x2

    aget-object v3, p0, v5

    check-cast v3, Landroid/view/View;

    .line 548
    .local v3, mInCallTouchUi:Landroid/view/View;
    sget-boolean v5, Lcom/android/phone/BaiduPhoneUtil;->isInHalfInCallMode:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/phone/BaiduPhoneUtil;->isInExpanding:Z

    if-nez v5, :cond_0

    .line 549
    const v5, 0x7f07007a

    invoke-virtual {v1, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 550
    .local v0, half:Landroid/view/View;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 551
    .local v4, rectgle:Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 552
    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/phone/BaiduPhoneUtil;->expand(Landroid/view/View;ILcom/android/phone/InCallScreen;Landroid/view/View;Landroid/view/View;)V

    .line 553
    sput-boolean v6, Lcom/android/phone/BaiduPhoneUtil;->isInExpanding:Z

    .line 555
    .end local v0           #half:Landroid/view/View;
    .end local v4           #rectgle:Landroid/graphics/Rect;
    :cond_0
    sget-boolean v5, Lcom/android/phone/BaiduPhoneUtil;->isInHalfInCallMode:Z

    return v5
.end method

.method static shouldRecord(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 757
    const/4 v2, 0x0

    .line 758
    .local v2, result:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 759
    .local v3, sp:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/android/phone/BaiduPhoneUtil;->AUTO_RECORD_ENABLE_KEY:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 761
    if-eqz v2, :cond_0

    .line 762
    sget-object v4, Lcom/android/phone/BaiduPhoneUtil;->RECORD_FOR_WHITE_ENABLE_KEY:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 763
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 764
    invoke-static {p0, p1}, Lcom/android/phone/AutoRecordListActivity;->existedInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 765
    .local v1, exist:Z
    if-nez v1, :cond_0

    .line 766
    const/4 v2, 0x0

    .line 771
    .end local v0           #enable:Z
    .end local v1           #exist:Z
    :cond_0
    return v2
.end method

.method static varargs showDTMFforServiceNumber([Ljava/lang/Object;)V
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 609
    sget-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    if-eqz v4, :cond_1

    .line 610
    sput-boolean v5, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad:Z

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    aget-object v0, p0, v5

    check-cast v0, Lcom/android/phone/InCallScreen;

    .line 614
    .local v0, ics:Lcom/android/phone/InCallScreen;
    const/4 v4, 0x1

    aget-object v4, p0, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 615
    .local v1, isYellowPage:Z
    const/4 v4, 0x2

    aget-object v3, p0, v4

    check-cast v3, Ljava/lang/String;

    .line 616
    .local v3, phoneNumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 618
    sget-object v4, Lcom/android/phone/BaiduPhoneUtil;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 619
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    :cond_2
    const v4, 0x7f070094

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0
.end method

.method static startAcceptCallAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "btns"

    .prologue
    const/4 v2, 0x0

    .line 442
    sget-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isBottomAnimationDone:Z

    if-eqz v1, :cond_0

    .line 447
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 444
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 445
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 446
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/BaiduPhoneUtil;->isBottomAnimationDone:Z

    goto :goto_0
.end method

.method static varargs startAutoRecord([Ljava/lang/Object;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 775
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v2

    .line 777
    .local v2, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-virtual {v2}, Lcom/android/phone/PhoneRecorder;->getFlagRecord()Z

    move-result v1

    .line 778
    .local v1, isRecording:Z
    if-eqz v1, :cond_0

    .line 786
    :goto_0
    return-void

    .line 781
    :cond_0
    const-string v3, "BaiduPhoneUtil"

    const-string v4, "startAutoRecord begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v3, 0x0

    aget-object v0, p0, v3

    check-cast v0, Lcom/android/phone/InCallScreen;

    .line 784
    .local v0, ics:Lcom/android/phone/InCallScreen;
    const v3, 0x7f070093

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 785
    const-string v3, "BaiduPhoneUtil"

    const-string v4, "startAutoRecord end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static unregisterAccelero()V
    .locals 3

    .prologue
    .line 201
    sget-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    .local v0, ctx:Landroid/content/Context;
    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 204
    .local v1, sm:Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->getInstance()Lcom/android/phone/BaiduPhoneUtil;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 205
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/BaiduPhoneUtil;->mAccRegistered:Z

    .line 208
    :cond_0
    return-void
.end method

.method public static updatePhoneLabelDisplay(Landroid/widget/TextView;)V
    .locals 3
    .parameter "vLabel"

    .prologue
    .line 834
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 835
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 836
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

    .line 837
    const/high16 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 838
    const/high16 v1, 0x4190

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 844
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 840
    .restart local v0       #text:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 841
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

    .line 738
    aget-object v0, p0, v6

    check-cast v0, Landroid/content/Context;

    .line 739
    .local v0, ctx:Landroid/content/Context;
    aget-object v1, p0, v4

    check-cast v1, Landroid/widget/TextView;

    .line 740
    .local v1, label:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget v3, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    if-lez v3, :cond_0

    sget-boolean v3, Lcom/android/phone/BaiduPhoneUtil;->mIsBusy:Z

    if-eqz v3, :cond_0

    .line 741
    const v3, 0x7f0c02e0

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/android/phone/BaiduPhoneUtil;->mCurCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, txt:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    .end local v2           #txt:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static updateSmartPhoteForPerson(JLandroid/widget/ImageView;)V
    .locals 8
    .parameter "personId"
    .parameter "photo"

    .prologue
    .line 582
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

    .line 587
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 589
    .local v3, fd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_0

    .line 590
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 593
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    move-object v0, p2

    check-cast v0, Lcom/android/phone/InCallContactPhotoEx;

    move-object v5, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/phone/InCallContactPhotoEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 595
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 597
    .restart local v3       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const v5, 0x7f0200fb

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    .end local v3           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v2

    .line 601
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static willLoadSmartPhoto(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "ci"

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->mViewMode:I

    if-nez v0, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 578
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
    .line 213
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 3
    .parameter "arg0"
    .parameter "values"

    .prologue
    const/high16 v2, 0x4040

    const/4 v0, 0x2

    .line 218
    monitor-enter p0

    .line 219
    if-ne p1, v0, :cond_0

    .line 220
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

    .line 228
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

    .line 231
    invoke-static {}, Lcom/android/phone/BaiduPhoneUtil;->unregisterAccelero()V

    .line 232
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 236
    :cond_0
    monitor-exit p0

    .line 237
    return-void

    .line 220
    :cond_1
    sget v0, Lcom/android/phone/BaiduPhoneUtil;->mMinAcceler:F

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
