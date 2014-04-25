.class public Lcom/android/phone/CallBannerController;
.super Ljava/lang/Object;
.source "CallBannerController.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallBannerController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallBannerController"


# instance fields
.field protected mApplication:Lcom/android/phone/PhoneApp;

.field protected mCallBanner:Lcom/android/phone/CallBanner;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field protected mContext:Landroid/content/Context;

.field protected mDensity:F

.field private mNeedClearUserData:Z

.field protected mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mSimColorMap:[I

.field protected mSimInfo:Landroid/provider/Telephony$SIMInfo;

.field private mTextColorCallTypeSip:I


# direct methods
.method public constructor <init>(Lcom/android/phone/CallBanner;Landroid/content/Context;)V
    .locals 2
    .parameter "callBanner"
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallBannerController;->mNeedClearUserData:Z

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/CallBannerController;->mSimColorMap:[I

    .line 64
    iput-object p1, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    .line 65
    iput-object p2, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBannerController;->mApplication:Lcom/android/phone/PhoneApp;

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallBannerController;->mDensity:F

    .line 68
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallBannerController;->mCallBannerSidePadding:I

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallBannerController;->mCallBannerTopBottomPadding:I

    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallBannerController;->mTextColorCallTypeSip:I

    .line 73
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 74
    return-void

    .line 52
    :array_0
    .array-data 0x4
        0xc2t 0x1t 0x2t 0x7ft
        0xc3t 0x1t 0x2t 0x7ft
        0xc4t 0x1t 0x2t 0x7ft
        0xc5t 0x1t 0x2t 0x7ft
        0xc6t 0x1t 0x2t 0x7ft
        0xc7t 0x1t 0x2t 0x7ft
        0xc8t 0x1t 0x2t 0x7ft
        0xc9t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 584
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 588
    const v2, 0x7f0b0192

    .line 661
    .local v2, resID:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 591
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 597
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallBannerController$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 657
    const v2, 0x7f0b0192

    .restart local v2       #resID:I
    goto :goto_0

    .line 599
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f0b0014

    .line 600
    .restart local v2       #resID:I
    goto :goto_0

    .line 603
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f0b0015

    .line 604
    .restart local v2       #resID:I
    goto :goto_0

    .line 607
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f0b0016

    .line 608
    .restart local v2       #resID:I
    goto :goto_0

    .line 611
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f0b0017

    .line 612
    .restart local v2       #resID:I
    goto :goto_0

    .line 615
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f0b0018

    .line 616
    .restart local v2       #resID:I
    goto :goto_0

    .line 619
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f0b0019

    .line 620
    .restart local v2       #resID:I
    goto :goto_0

    .line 623
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f0b001b

    .line 624
    .restart local v2       #resID:I
    goto :goto_0

    .line 627
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f0b001a

    .line 628
    .restart local v2       #resID:I
    goto :goto_0

    .line 632
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f0b001c

    .line 633
    .restart local v2       #resID:I
    goto :goto_0

    .line 636
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f0b001d

    .line 637
    .restart local v2       #resID:I
    goto :goto_0

    .line 640
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f0b001e

    .line 641
    .restart local v2       #resID:I
    goto :goto_0

    .line 644
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f0b001f

    .line 645
    .restart local v2       #resID:I
    goto :goto_0

    .line 648
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f0b0021

    .line 649
    .restart local v2       #resID:I
    goto :goto_0

    .line 653
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f0b0030

    .line 654
    .restart local v2       #resID:I
    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    :cond_0
    :goto_0
    return-object v0

    .line 574
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 724
    const-string v0, "CallBannerController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void
.end method

.method private updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "call"
    .parameter "callBanner"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mSimColorMap:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mSimColorMap:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mSimColorMap:[I

    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 221
    iget v0, p0, Lcom/android/phone/CallBannerController;->mCallBannerSidePadding:I

    iget v1, p0, Lcom/android/phone/CallBannerController;->mCallBannerTopBottomPadding:I

    iget v2, p0, Lcom/android/phone/CallBannerController;->mCallBannerSidePadding:I

    iget v3, p0, Lcom/android/phone/CallBannerController;->mCallBannerTopBottomPadding:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 13
    .parameter "call"

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 227
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 228
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 230
    .local v5, phoneType:I
    const/4 v1, 0x0

    .line 231
    .local v1, callStateLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 236
    .local v0, bluetoothIconId:I
    sget-object v8, Lcom/android/phone/CallBannerController$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 318
    const-string v8, "CallBannerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    :goto_0
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 325
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 329
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v9, 0x7f0b018d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_1
    :goto_1
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 337
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/android/phone/PhoneUtils;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 355
    :cond_2
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v8, v8, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v8, v8, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    if-eqz v0, :cond_6

    .line 361
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v8, v8, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 362
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v8, v8, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/phone/CallBannerController;->mDensity:F

    const/high16 v10, 0x40a0

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 371
    :goto_2
    return-void

    .line 243
    :pswitch_0
    const-string v8, "CallBannerController"

    const-string v9, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/phone/VTCallUtils$VTTimingMode;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/android/phone/VTCallUtils$VTTimingMode;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 255
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 256
    .local v2, duration:J
    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 257
    goto :goto_0

    .line 261
    .end local v2           #duration:J
    :pswitch_2
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0193

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    goto/16 :goto_0

    .line 266
    :pswitch_3
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v9, 0x7f0b018d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    goto/16 :goto_0

    .line 274
    :pswitch_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    const v0, 0x7f020181

    goto/16 :goto_0

    .line 286
    :pswitch_5
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0194

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v8, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v8, v8, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStartDate:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v10, 0x7f0b03b4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v11, v11, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStartDate:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, sTime:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    goto/16 :goto_0

    .line 302
    .end local v6           #sTime:Ljava/lang/String;
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallBannerController;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 304
    const-string v8, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 305
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v8, v8, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStartDate:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v10, 0x7f0b03b4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v11, v11, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStartDate:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 308
    .restart local v6       #sTime:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    goto/16 :goto_0

    .line 330
    .end local v6           #sTime:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 331
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const v9, 0x7f0b018e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 365
    :cond_6
    iget-object v8, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v8, v8, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 537
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 538
    .local v0, phoneType:I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v2, v2, Lcom/android/phone/CallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v1, v1, Lcom/android/phone/CallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 541
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v1, v1, Lcom/android/phone/CallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallBannerController;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    :goto_1
    return-void

    .end local v0           #phoneType:I
    :cond_0
    move v0, v1

    .line 537
    goto :goto_0

    .line 543
    .restart local v0       #phoneType:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v1, v1, Lcom/android/phone/CallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 10
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 389
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 390
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, displayNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 396
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x0

    .line 397
    .local v4, personUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 398
    .local v6, socialStatusText:Ljava/lang/String;
    const/4 v5, 0x0

    .line 400
    .local v5, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 423
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 424
    .local v3, number:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, "sip:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 425
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    :cond_0
    invoke-static {}, Lcom/android/phone/HyphonManager;->getInstance()Lcom/android/phone/HyphonManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 435
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 438
    invoke-direct {p0, p2}, Lcom/android/phone/CallBannerController;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, displayName:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 500
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 501
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mName:Landroid/widget/TextView;

    const v8, 0x7f0b0195

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 505
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mName:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    if-eqz v1, :cond_9

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v7

    if-nez v7, :cond_9

    .line 508
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v7

    if-nez v7, :cond_a

    .line 515
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :goto_3
    invoke-direct {p0, p4}, Lcom/android/phone/CallBannerController;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 523
    invoke-direct {p0, v6, v5, p4}, Lcom/android/phone/CallBannerController;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 524
    .end local v0           #displayName:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    return-void

    .line 440
    .restart local v3       #number:Ljava/lang/String;
    :cond_3
    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v7, :cond_4

    .line 444
    invoke-direct {p0, p2}, Lcom/android/phone/CallBannerController;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 446
    .end local v0           #displayName:Ljava/lang/String;
    :cond_4
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 448
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 449
    .restart local v0       #displayName:Ljava/lang/String;
    iget-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 450
    move-object v1, v3

    goto :goto_0

    .line 460
    .end local v0           #displayName:Ljava/lang/String;
    :cond_5
    move-object v0, v3

    .line 464
    .restart local v0       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 468
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto :goto_0

    .line 477
    .end local v0           #displayName:Ljava/lang/String;
    :cond_6
    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v7, :cond_7

    .line 481
    invoke-direct {p0, p2}, Lcom/android/phone/CallBannerController;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 485
    .end local v0           #displayName:Ljava/lang/String;
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 486
    .restart local v0       #displayName:Ljava/lang/String;
    move-object v1, v3

    .line 487
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 503
    :cond_8
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mName:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 511
    :cond_9
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 518
    :cond_a
    iget-object v7, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v7, v7, Lcom/android/phone/CallBanner;->mLabel:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "socialStatusText"
    .parameter "socialStatusBadge"
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 556
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSocialStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSocialStatus:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallBannerController;->mDensity:F

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSocialStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearCallBannerInfo()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSocialStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mOperatorName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSimIndicator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mSimIndicator:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v0, v0, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 667
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_6

    move-object v4, p2

    .line 672
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 673
    .local v4, call:Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 674
    .local v5, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 675
    .local v7, phoneType:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 676
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 686
    .local v6, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 687
    .local v2, presentation:I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 694
    :cond_0
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5

    .line 695
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .end local v2           #presentation:I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 705
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    .end local p2
    :cond_1
    :goto_1
    return-void

    .line 677
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v5       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    .line 679
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 681
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    .restart local v2       #presentation:I
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 701
    .end local v2           #presentation:I
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #phoneType:I
    :cond_6
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 703
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setNeedClearUserData(Z)V
    .locals 0
    .parameter "isNeedClearUserData"

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/android/phone/CallBannerController;->mNeedClearUserData:Z

    .line 721
    return-void
.end method

.method updateElapsedTimeWidget(J)V
    .locals 3
    .parameter "timeElapsed"

    .prologue
    .line 201
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v1, v1, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, time:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v1, v1, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/Call;)V
    .locals 18
    .parameter "call"

    .prologue
    .line 79
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    if-nez v2, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/phone/CallBanner;->setVisibility(I)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getVTUsedSimInfo()Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_3

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v2, v2, Lcom/android/phone/CallBanner;->mSimIndicator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallBannerController;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v4, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v2, v2, Lcom/android/phone/CallBanner;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v2, v2, Lcom/android/phone/CallBanner;->mMainCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallBannerController;->updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V

    .line 104
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getVTNetworkOperatorName()Ljava/lang/String;

    move-result-object v15

    .line 105
    .local v15, operatorName:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v2, v2, Lcom/android/phone/CallBanner;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v2, v2, Lcom/android/phone/CallBanner;->mOperatorName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_1
    if-nez p1, :cond_4

    .line 192
    .end local v15           #operatorName:Ljava/lang/String;
    :goto_1
    return-void

    .line 92
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v2, v2, Lcom/android/phone/CallBanner;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mCallBanner:Lcom/android/phone/CallBanner;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/phone/CallBanner;->setVisibility(I)V

    goto :goto_1

    .line 113
    .restart local v15       #operatorName:Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallBannerController;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 114
    const/4 v7, 0x0

    .line 115
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 116
    .local v16, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 125
    :goto_2
    if-nez v7, :cond_8

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 132
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 118
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 120
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_2

    .line 122
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_8
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 139
    .local v10, presentation:I
    const/16 v17, 0x1

    .line 140
    .local v17, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 141
    .local v14, o:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallBannerController;->mNeedClearUserData:Z

    if-eqz v2, :cond_9

    .line 143
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 144
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallBannerController;->mNeedClearUserData:Z

    .line 145
    const/16 v17, 0x1

    .line 153
    :goto_3
    if-eqz v17, :cond_c

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 157
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_b

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 146
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_9
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_a

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    goto :goto_3

    .line 150
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallBannerController;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_3

    .line 157
    .restart local v3       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 164
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_c
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_d

    move-object v9, v14

    .line 165
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 167
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 168
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 169
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 174
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 175
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_d
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_e

    .line 176
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 181
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallBannerController;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 183
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #o:Ljava/lang/Object;
    :cond_e
    const-string v2, "CallBannerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
