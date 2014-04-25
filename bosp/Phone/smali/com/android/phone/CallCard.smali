.class public Lcom/android/phone/CallCard;
.super Landroid/widget/LinearLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$3;,
        Lcom/android/phone/CallCard$Fade;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field private static final MESSAGE_DELAY:I = 0x1f4

.field private static final MESSAGE_SHOW_UNKNOWN_PHOTO:I = 0x65

.field public static final TOKEN_DO_NOTHING:I = 0x1

.field public static final TOKEN_UPDATE_PHOTO_FOR_CALL_STATE:I

.field private static mLCforUserData:Z

.field private static mLocaleChanged:Z


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private final mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mLabel:Landroid/widget/TextView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mOperatorName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mSecondaryCallSimIndicator:Landroid/widget/TextView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryLabel:Landroid/widget/TextView;

.field private mSecondaryPhoneNumber:Landroid/widget/TextView;

.field private mSimColorMap:[I

.field private mSimIndicator:Landroid/widget/TextView;

.field private mSimInfo:Landroid/provider/Telephony$SIMInfo;

.field private mSocialStatus:Landroid/widget/TextView;

.field private mTextColorCallTypeSip:I

.field mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 170
    sput-boolean v0, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 171
    sput-boolean v0, Lcom/android/phone/CallCard;->mLCforUserData:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    .line 196
    new-instance v0, Lcom/android/phone/CallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 218
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 221
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mCallBannerTopBottomPadding:I

    .line 229
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    .line 231
    return-void

    .line 173
    nop

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

.method static synthetic access$000(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallContactPhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1892
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1893
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1894
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1896
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1897
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 20
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 500
    if-nez p2, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateSimInfo(Lcom/android/internal/telephony/Call;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v4, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const v4, 0x7f0b01b8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 600
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 717
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 722
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 576
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const v4, 0x7f0b01b8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 580
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 589
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 590
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v4, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 593
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 597
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 606
    :cond_7
    const/4 v7, 0x0

    .line 607
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 608
    .local v16, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    .line 609
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 617
    :goto_5
    if-nez v7, :cond_b

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 624
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 610
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 612
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_5

    .line 614
    :cond_a
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

    .line 627
    :cond_b
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 631
    .local v10, presentation:I
    const/16 v17, 0x1

    .line 632
    .local v17, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 633
    .local v14, o:Ljava/lang/Object;
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_10

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    .line 642
    :goto_6
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_e

    .line 643
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 644
    .local v15, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v19

    .line 645
    .local v19, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v18

    .line 646
    .local v18, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 647
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_11

    move-object v2, v14

    .line 648
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 653
    :cond_c
    :goto_7
    if-eqz v3, :cond_e

    .line 654
    if-eqz v19, :cond_d

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 657
    const/16 v17, 0x1

    .line 659
    :cond_d
    if-eqz v18, :cond_e

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 662
    const/16 v17, 0x1

    .line 667
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v18           #updatedCnapName:Ljava/lang/String;
    .end local v19           #updatedNumber:Ljava/lang/String;
    :cond_e
    if-eqz v17, :cond_13

    .line 669
    sget-boolean v2, Lcom/android/phone/CallCard;->mLCforUserData:Z

    if-eqz v2, :cond_f

    .line 671
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 672
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/CallCard;->mLCforUserData:Z

    .line 675
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 677
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_12

    const/4 v11, 0x1

    :goto_8
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 637
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_6

    .line 649
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v18       #updatedCnapName:Ljava/lang/String;
    .restart local v19       #updatedNumber:Ljava/lang/String;
    :cond_11
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_c

    move-object v3, v14

    .line 650
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_7

    .line 677
    .end local v15           #obj:Ljava/lang/Object;
    .end local v18           #updatedCnapName:Ljava/lang/String;
    .end local v19           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_12
    const/4 v11, 0x0

    goto :goto_8

    .line 684
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_13
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_14

    move-object v9, v14

    .line 685
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 687
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 688
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 689
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 694
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 695
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_14
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_15

    .line 696
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 701
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_3

    .line 703
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #o:Ljava/lang/Object;
    :cond_15
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1034
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1035
    :cond_0
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1169
    :goto_0
    return-void

    .line 1039
    :cond_1
    const/4 v6, 0x0

    .line 1040
    .local v6, showSecondaryCallInfo:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 1041
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1163
    const/4 v6, 0x0

    .line 1168
    :goto_1
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v6, :cond_b

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1047
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 1048
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallSimIndicator:Landroid/widget/TextView;

    const v10, 0x7f0b01b8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1049
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallSimIndicator:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    :goto_3
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v9}, Lcom/android/phone/CallCard;->updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V

    .line 1065
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1067
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b0031

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1069
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1070
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v10, 0x7f0201d7

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1099
    :goto_4
    const/4 v6, 0x1

    .line 1101
    goto :goto_1

    .line 1050
    :cond_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v9, v9, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1051
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallSimIndicator:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v10, v10, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallSimIndicator:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1054
    :cond_3
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallSimIndicator:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1076
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v9, p2, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1078
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-boolean v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v9, :cond_6

    .line 1089
    iget-object v9, p0, Lcom/android/phone/CallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v10, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v8

    .line 1090
    .local v8, yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget v9, v8, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1091
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v10, 0x7f0201dc

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_4

    .line 1093
    :cond_5
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_4

    .line 1095
    .end local v8           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_6
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v10, 0x7f0201db

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_4

    .line 1107
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    .line 1108
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1109
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_7

    .line 1114
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b0195

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v10, 0x7f0201db

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1150
    :goto_5
    const/4 v6, 0x1

    .line 1152
    goto/16 :goto_1

    .line 1120
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1121
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v9, v0, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1127
    .restart local v4       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1129
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1130
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1131
    .local v2, forceGenericPhoto:Z
    if-eqz v3, :cond_8

    iget v9, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v10, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v9, v10, :cond_8

    .line 1133
    iget v9, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v5

    .line 1134
    const/4 v2, 0x1

    .line 1136
    :cond_8
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    if-nez v2, :cond_9

    iget-boolean v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v9, :cond_9

    .line 1145
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v9, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_5

    .line 1147
    :cond_9
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v10, 0x7f0201db

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_5

    .line 1154
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #forceGenericPhoto:Z
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5           #name:Ljava/lang/String;
    :cond_a
    const-string v9, "CallCard"

    const-string v10, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v6, 0x0

    .line 1157
    goto/16 :goto_1

    .line 1168
    :cond_b
    const/16 v9, 0x8

    goto/16 :goto_2

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 1197
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1200
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1204
    const v2, 0x7f0b0192

    .line 1277
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1207
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1213
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1273
    const v2, 0x7f0b0192

    .restart local v2       #resID:I
    goto :goto_0

    .line 1215
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f0b0014

    .line 1216
    .restart local v2       #resID:I
    goto :goto_0

    .line 1219
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f0b0015

    .line 1220
    .restart local v2       #resID:I
    goto :goto_0

    .line 1223
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f0b0016

    .line 1224
    .restart local v2       #resID:I
    goto :goto_0

    .line 1227
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f0b0017

    .line 1228
    .restart local v2       #resID:I
    goto :goto_0

    .line 1231
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f0b0018

    .line 1232
    .restart local v2       #resID:I
    goto :goto_0

    .line 1235
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f0b0019

    .line 1236
    .restart local v2       #resID:I
    goto :goto_0

    .line 1239
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f0b001b

    .line 1240
    .restart local v2       #resID:I
    goto :goto_0

    .line 1243
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f0b001a

    .line 1244
    .restart local v2       #resID:I
    goto :goto_0

    .line 1248
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f0b001c

    .line 1249
    .restart local v2       #resID:I
    goto :goto_0

    .line 1252
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f0b001d

    .line 1253
    .restart local v2       #resID:I
    goto :goto_0

    .line 1256
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f0b001e

    .line 1257
    .restart local v2       #resID:I
    goto :goto_0

    .line 1260
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f0b001f

    .line 1261
    .restart local v2       #resID:I
    goto :goto_0

    .line 1264
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f0b0021

    .line 1265
    .restart local v2       #resID:I
    goto :goto_0

    .line 1269
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f0b0030

    .line 1270
    .restart local v2       #resID:I
    goto :goto_0

    .line 1213
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

.method private getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;
    .locals 3
    .parameter "cause"

    .prologue
    .line 2334
    if-nez p1, :cond_0

    .line 2338
    const v0, 0x7f0b0192

    .line 2404
    .local v0, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2340
    .end local v0           #resID:I
    :cond_0
    sget-object v1, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2400
    const v0, 0x7f0b0192

    .restart local v0       #resID:I
    goto :goto_0

    .line 2342
    .end local v0           #resID:I
    :pswitch_0
    const v0, 0x7f0b0014

    .line 2343
    .restart local v0       #resID:I
    goto :goto_0

    .line 2346
    .end local v0           #resID:I
    :pswitch_1
    const v0, 0x7f0b0015

    .line 2347
    .restart local v0       #resID:I
    goto :goto_0

    .line 2350
    .end local v0           #resID:I
    :pswitch_2
    const v0, 0x7f0b0016

    .line 2351
    .restart local v0       #resID:I
    goto :goto_0

    .line 2354
    .end local v0           #resID:I
    :pswitch_3
    const v0, 0x7f0b0017

    .line 2355
    .restart local v0       #resID:I
    goto :goto_0

    .line 2358
    .end local v0           #resID:I
    :pswitch_4
    const v0, 0x7f0b0018

    .line 2359
    .restart local v0       #resID:I
    goto :goto_0

    .line 2362
    .end local v0           #resID:I
    :pswitch_5
    const v0, 0x7f0b0019

    .line 2363
    .restart local v0       #resID:I
    goto :goto_0

    .line 2366
    .end local v0           #resID:I
    :pswitch_6
    const v0, 0x7f0b001b

    .line 2367
    .restart local v0       #resID:I
    goto :goto_0

    .line 2370
    .end local v0           #resID:I
    :pswitch_7
    const v0, 0x7f0b001a

    .line 2371
    .restart local v0       #resID:I
    goto :goto_0

    .line 2375
    .end local v0           #resID:I
    :pswitch_8
    const v0, 0x7f0b001c

    .line 2376
    .restart local v0       #resID:I
    goto :goto_0

    .line 2379
    .end local v0           #resID:I
    :pswitch_9
    const v0, 0x7f0b001d

    .line 2380
    .restart local v0       #resID:I
    goto :goto_0

    .line 2383
    .end local v0           #resID:I
    :pswitch_a
    const v0, 0x7f0b001e

    .line 2384
    .restart local v0       #resID:I
    goto :goto_0

    .line 2387
    .end local v0           #resID:I
    :pswitch_b
    const v0, 0x7f0b001f

    .line 2388
    .restart local v0       #resID:I
    goto :goto_0

    .line 2391
    .end local v0           #resID:I
    :pswitch_c
    const v0, 0x7f0b0021

    .line 2392
    .restart local v0       #resID:I
    goto :goto_0

    .line 2396
    .end local v0           #resID:I
    :pswitch_d
    const v0, 0x7f0b0030

    .line 2397
    .restart local v0       #resID:I
    goto :goto_0

    .line 2340
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

.method private getCallLocationOrLabel(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 7
    .parameter "call"

    .prologue
    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 1174
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1175
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1176
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1184
    :goto_0
    if-eqz v1, :cond_0

    .line 1185
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 1186
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 1187
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1193
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->getLocationOrLabelByCallerInfo(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1177
    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1179
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 1181
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

    .line 1188
    .restart local v2       #o:Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_0

    .line 1189
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "loc"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2480
    if-nez p0, :cond_1

    const-string v1, ""

    .line 2491
    :cond_0
    :goto_0
    return-object v1

    .line 2481
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v8, "zh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2482
    .local v2, isZn:Z
    const-string v5, "\\&"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2483
    .local v0, d:[Ljava/lang/String;
    const-string v1, ""

    .line 2484
    .local v1, geoInfo:Ljava/lang/String;
    array-length v8, v0

    if-eqz v2, :cond_2

    move v5, v6

    :goto_1
    if-le v8, v5, :cond_0

    .line 2485
    if-eqz v2, :cond_3

    move v5, v6

    :goto_2
    aget-object v4, v0, v5

    .line 2486
    .local v4, zn:Ljava/lang/String;
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2487
    .local v3, sv:[Ljava/lang/String;
    array-length v5, v3

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v3           #sv:[Ljava/lang/String;
    .end local v4           #zn:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 2484
    goto :goto_1

    :cond_3
    move v5, v7

    .line 2485
    goto :goto_2

    .line 2488
    .restart local v3       #sv:[Ljava/lang/String;
    .restart local v4       #zn:Ljava/lang/String;
    :cond_4
    array-length v5, v3

    if-ne v5, v7, :cond_5

    aget-object v1, v3, v6

    goto :goto_0

    .line 2489
    :cond_5
    const-string v1, ""

    goto :goto_0
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1549
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1550
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1554
    :cond_0
    :goto_0
    return-object v0

    .line 1551
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2068
    const-string v0, "CallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    return-void
.end method

.method private setSideMargins(Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "vg"
    .parameter "margin"

    .prologue
    .line 1790
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1793
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1794
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1795
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1796
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 1752
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1753
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "showCachedImage: using the cachedPhoto!"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1755
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1760
    :goto_0
    const/4 v0, 0x1

    .line 1763
    :goto_1
    return v0

    .line 1757
    :cond_0
    const-string v0, "showCachedImage: using picture_unknown!"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1758
    const v0, 0x7f0201db

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1762
    :cond_1
    const-string v0, "showCachedImage: return false!"

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1763
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1768
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1770
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 1773
    const-string v0, "- showImage - 1 "

    invoke-static {v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1774
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1775
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1778
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1779
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1780
    return-void
.end method

.method private updateCallBannerBackground(Lcom/android/internal/telephony/Call;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "call"
    .parameter "callBanner"

    .prologue
    .line 1942
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1943
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1946
    .local v1, phoneType:I
    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 1947
    const v2, 0x7f0201ca

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1960
    :goto_0
    iget v2, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    iget v3, p0, Lcom/android/phone/CallCard;->mCallBannerTopBottomPadding:I

    iget v4, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    iget v5, p0, Lcom/android/phone/CallCard;->mCallBannerTopBottomPadding:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1961
    :cond_0
    return-void

    .line 1949
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1954
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget-object v3, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v2, v2, v3

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCallBannerBackground(Lcom/android/phone/InCallUiState$FakeCall;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "call"
    .parameter "callBanner"

    .prologue
    .line 2413
    iget v0, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    .line 2415
    .local v0, phoneType:I
    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 2416
    const v1, 0x7f0201ca

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2429
    :goto_0
    iget v1, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    iget v2, p0, Lcom/android/phone/CallCard;->mCallBannerTopBottomPadding:I

    iget v3, p0, Lcom/android/phone/CallCard;->mCallBannerSidePadding:I

    iget v4, p0, Lcom/android/phone/CallCard;->mCallBannerTopBottomPadding:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2430
    :cond_0
    return-void

    .line 2418
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimColorMap:[I

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 368
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 378
    .local v2, ringing:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v1

    .line 379
    .local v1, reservedVerticalSpace:I
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 381
    .local v0, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 385
    return-void

    .line 368
    .end local v0           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #reservedVerticalSpace:I
    .end local v2           #ringing:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 13
    .parameter "call"

    .prologue
    .line 850
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 851
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 852
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 853
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 855
    .local v6, phoneType:I
    const/4 v1, 0x0

    .line 856
    .local v1, callStateLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 861
    .local v0, bluetoothIconId:I
    sget-object v8, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 922
    const-string v8, "CallCard"

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

    .line 928
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 929
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 933
    const v8, 0x7f0b018d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 938
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 941
    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 959
    :cond_2
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    if-eqz v0, :cond_6

    .line 965
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 966
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v10, 0x40a0

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 977
    :goto_2
    sget-object v8, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    .line 1001
    :cond_3
    :goto_3
    :sswitch_0
    return-void

    .line 868
    :pswitch_1
    const-string v8, "CallCard"

    const-string v9, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 883
    :pswitch_2
    const v8, 0x7f0b0193

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 884
    goto :goto_0

    .line 888
    :pswitch_3
    const v8, 0x7f0b018d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 889
    goto :goto_0

    .line 894
    :pswitch_4
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 895
    const v8, 0x7f0b0197

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 902
    :goto_4
    iget-object v8, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 903
    const v0, 0x7f020181

    goto :goto_0

    .line 897
    :cond_4
    const v8, 0x7f0b0190

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 914
    :pswitch_5
    const v8, 0x7f0b0194

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 915
    goto/16 :goto_0

    .line 918
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 919
    goto/16 :goto_0

    .line 934
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 935
    const v8, 0x7f0b018e

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 969
    :cond_6
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 980
    :sswitch_1
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 981
    .local v3, duration:J
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_7

    .line 982
    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto :goto_3

    .line 983
    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_3

    .line 984
    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_3

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 977
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 1809
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1810
    .local v0, phoneType:I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1811
    iget-object v2, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1812
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1813
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1821
    :goto_1
    return-void

    .end local v0           #phoneType:I
    :cond_0
    move v0, v1

    .line 1809
    goto :goto_0

    .line 1819
    .restart local v0       #phoneType:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    const/16 v3, 0x8

    .line 1567
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1568
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1575
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f0201d8

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1576
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0b0195

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1589
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1594
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1598
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1610
    return-void

    .line 1577
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1583
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f0201d7

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1584
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0b018f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1586
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 16
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 1296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1301
    const/4 v3, 0x0

    .line 1302
    .local v3, displayNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1303
    .local v5, label:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1304
    .local v7, personUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 1305
    .local v10, socialStatusText:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1307
    .local v9, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_f

    .line 1323
    sget-boolean v12, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1324
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x10402ea

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1328
    :cond_0
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 1339
    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1340
    .local v6, number:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v12, "sip:"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1341
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1344
    :cond_2
    if-eqz v6, :cond_3

    .line 1345
    invoke-static {}, Lcom/android/phone/HyphonManager;->getInstance()Lcom/android/phone/HyphonManager;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1348
    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1354
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1357
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    .line 1393
    .local v2, displayName:Ljava/lang/String;
    :cond_4
    :goto_0
    if-eqz v6, :cond_6

    .line 1394
    const-string v12, "17951"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "17911"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "17909"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1397
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneApp;->setIpCall(Z)V

    .line 1418
    :cond_6
    :goto_1
    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1426
    .end local v6           #number:Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .line 1427
    .local v4, displayYellowInfo:Z
    const v8, 0x7f0201db

    .line 1428
    .local v8, resId:I
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v11

    .line 1430
    .local v11, yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget v12, v11, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1431
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1432
    iget-object v2, v11, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->name:Ljava/lang/String;

    .line 1433
    const v8, 0x7f0201dc

    .line 1434
    const/4 v4, 0x1

    .line 1441
    .end local v11           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_7
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1442
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v13, 0x7f0b0195

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 1446
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1458
    if-eqz p3, :cond_12

    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v12, :cond_12

    .line 1459
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1508
    :cond_9
    :goto_5
    if-eqz v3, :cond_16

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v12

    if-nez v12, :cond_16

    .line 1509
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1515
    :goto_6
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/phone/CallCard;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1516
    if-eqz v5, :cond_17

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v12

    if-nez v12, :cond_17

    .line 1517
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1524
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1526
    return-void

    .line 1359
    .end local v2           #displayName:Ljava/lang/String;
    .end local v4           #displayYellowInfo:Z
    .end local v8           #resId:I
    .restart local v6       #number:Ljava/lang/String;
    :cond_a
    sget v12, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v12, :cond_b

    .line 1363
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1365
    .end local v2           #displayName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1367
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1368
    .restart local v2       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1369
    move-object v3, v6

    goto/16 :goto_0

    .line 1379
    .end local v2           #displayName:Ljava/lang/String;
    :cond_c
    move-object v2, v6

    .line 1382
    .restart local v2       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1386
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 1403
    .end local v2           #displayName:Ljava/lang/String;
    :cond_d
    sget v12, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    if-eq v0, v12, :cond_e

    .line 1407
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1411
    .end local v2           #displayName:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1412
    .restart local v2       #displayName:Ljava/lang/String;
    move-object v3, v6

    .line 1413
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_1

    .line 1422
    .end local v2           #displayName:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #displayName:Ljava/lang/String;
    goto/16 :goto_2

    .line 1435
    .restart local v4       #displayYellowInfo:Z
    .restart local v8       #resId:I
    .restart local v11       #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_10
    iget v12, v11, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    if-nez v12, :cond_7

    .line 1436
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 1444
    .end local v11           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1460
    :cond_12
    if-eqz p1, :cond_13

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v12, :cond_13

    .line 1461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v12, v13}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1463
    :cond_13
    if-eqz v4, :cond_14

    .line 1464
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v12, v8}, Lcom/android/phone/InCallContactPhoto;->setImageResource(I)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    goto/16 :goto_5

    .line 1467
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1468
    if-nez v7, :cond_15

    .line 1469
    const-string v12, "CallCard"

    const-string v13, "personPri is null. Just use Unknown picture."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v13, 0x7f0201db

    invoke-static {v12, v13}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1471
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v7, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1480
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1488
    const-string v12, "CallCard"

    const-string v13, "onImageLoadComplete. begin "

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/android/phone/CallCard$AsyncLoadCookie;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v14, v15, v0, v1}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move-object/from16 v0, p0

    invoke-static {v12, v13, v7, v0, v14}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x65

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 1512
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1520
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 11
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"
    .parameter "nameView"
    .parameter "isOnHold"
    .parameter "numberView"
    .parameter "labelView"
    .parameter "photoView"

    .prologue
    .line 2079
    if-nez p7, :cond_0

    .line 2080
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2081
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2086
    :cond_0
    const/4 v2, 0x0

    .line 2087
    .local v2, displayNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2088
    .local v3, label:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2089
    .local v5, personUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 2090
    .local v7, socialStatusText:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2092
    .local v6, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_c

    .line 2108
    sget-boolean v8, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2109
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2110
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10402ea

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2113
    :cond_1
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 2125
    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2126
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v8, "sip:"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2127
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2129
    :cond_3
    invoke-static {}, Lcom/android/phone/HyphonManager;->getInstance()Lcom/android/phone/HyphonManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2131
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2137
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2141
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .line 2203
    .local v1, displayName:Ljava/lang/String;
    :cond_4
    :goto_0
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2210
    .end local v4           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2211
    const v8, 0x7f0b0195

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 2215
    :goto_2
    const/4 v8, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2230
    if-nez p7, :cond_6

    .line 2231
    if-eqz p3, :cond_e

    if-eqz p1, :cond_5

    iget-boolean v8, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v8, :cond_e

    .line 2232
    :cond_5
    const/4 v8, 0x4

    move-object/from16 v0, p10

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2243
    :cond_6
    :goto_3
    if-eqz v2, :cond_10

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v8

    if-nez v8, :cond_10

    .line 2244
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2245
    const/4 v8, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2250
    :goto_4
    if-eqz v3, :cond_11

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v8

    if-nez v8, :cond_11

    .line 2251
    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    const/4 v8, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2260
    :goto_5
    return-void

    .line 2143
    .end local v1           #displayName:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    :cond_7
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v8, :cond_8

    .line 2149
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 2151
    .end local v1           #displayName:Ljava/lang/String;
    :cond_8
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2153
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2154
    .restart local v1       #displayName:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2155
    move-object v2, v4

    goto :goto_0

    .line 2165
    .end local v1           #displayName:Ljava/lang/String;
    :cond_9
    move-object v1, v4

    .line 2170
    .restart local v1       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2176
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto :goto_0

    .line 2186
    .end local v1           #displayName:Ljava/lang/String;
    :cond_a
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v8, :cond_b

    .line 2192
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 2196
    .end local v1           #displayName:Ljava/lang/String;
    :cond_b
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2197
    .restart local v1       #displayName:Ljava/lang/String;
    move-object v2, v4

    .line 2198
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 2207
    .end local v1           #displayName:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 2213
    :cond_d
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2233
    :cond_e
    if-eqz p1, :cond_f

    iget v8, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v8, :cond_f

    .line 2234
    iget v8, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move-object/from16 v0, p10

    invoke-static {v0, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 2235
    :cond_f
    move-object/from16 v0, p10

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2238
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/phone/CallCard$AsyncLoadCookie;

    move-object/from16 v0, p10

    invoke-direct {v10, v0, p1, p4}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v8, v9, v5, p0, v10}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2247
    :cond_10
    const/16 v8, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2254
    :cond_11
    const/16 v8, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    .line 394
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 395
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 398
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 399
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 414
    move-object v1, v0

    .line 417
    const/4 v0, 0x0

    .line 420
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 422
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 424
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 425
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 426
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 429
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 433
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 435
    :cond_4
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 437
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v1, Lcom/android/phone/InCallUiState;->latestDisconnectCall:Lcom/android/phone/InCallUiState$FakeCall;

    .line 484
    .local v0, fakeCall:Lcom/android/phone/InCallUiState$FakeCall;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->displayFakeCallStatus(Lcom/android/phone/InCallUiState$FakeCall;)V

    .line 491
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 489
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter "call"

    .prologue
    .line 1624
    const/4 v6, 0x0

    .line 1628
    .local v6, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1629
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1669
    const/4 v2, 0x0

    .line 1671
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v3, 0x0

    .line 1672
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1673
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_5

    .line 1674
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1682
    :goto_0
    if-eqz v3, :cond_0

    .line 1683
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 1684
    .local v4, o:Ljava/lang/Object;
    instance-of v9, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_8

    move-object v2, v4

    .line 1685
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    .line 1692
    .end local v4           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1693
    iget v6, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1707
    :cond_1
    if-nez v6, :cond_a

    .line 1708
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1709
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v9, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_2

    .line 1711
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v7

    .line 1712
    .local v7, photoUri:Landroid/net/Uri;
    if-nez v7, :cond_9

    .line 1713
    const-string v9, "CallCard"

    const-string v10, "photoUri became null. Show default avatar icon"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v10, 0x7f0201db

    invoke-static {v9, v10}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1726
    :goto_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1738
    .end local v2           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    .end local v7           #photoUri:Landroid/net/Uri;
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 1740
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v9, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1742
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1744
    :cond_3
    :goto_4
    return-void

    .line 1634
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1637
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2

    .line 1638
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1639
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v9, :cond_2

    .line 1641
    :cond_4
    const v6, 0x7f0201d6

    goto :goto_3

    .line 1675
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v2       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_5
    const/4 v9, 0x1

    if-eq v5, v9, :cond_6

    const/4 v9, 0x3

    if-ne v5, v9, :cond_7

    .line 1677
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1679
    :cond_7
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1686
    .restart local v4       #o:Ljava/lang/Object;
    :cond_8
    instance-of v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_0

    .line 1687
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4           #o:Ljava/lang/Object;
    iget-object v2, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 1719
    .restart local v7       #photoUri:Landroid/net/Uri;
    :cond_9
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 1721
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1722
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v2, v13}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v9, v10, v7, p0, v11}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_2

    .line 1731
    .end local v7           #photoUri:Landroid/net/Uri;
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v9, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1732
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_4

    .line 1629
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    const/4 v5, 0x0

    .line 448
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 451
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v3}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 454
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 455
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 456
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v3}, Lcom/android/phone/BaiduPhoneUtil;->getCallerInfo(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 457
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v6, :cond_1

    .line 459
    :cond_0
    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-nez v4, :cond_1

    .line 460
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object v4, v5

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 468
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 469
    return-void
.end method

.method private updateSimInfo(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter "call"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1903
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1904
    .local v0, phone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v1, -0x1

    .line 1906
    .local v1, slot:I
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_3

    .line 1907
    const/4 v1, 0x1

    .line 1912
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_5

    .line 1913
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1914
    const/4 v1, 0x0

    .line 1918
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 1920
    if-ne v1, v4, :cond_2

    if-eqz p1, :cond_2

    .line 1921
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 1938
    :cond_2
    :goto_2
    return-void

    .line 1908
    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 1909
    const/4 v1, 0x0

    goto :goto_0

    .line 1915
    :cond_4
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPendingMmiCodesGemini(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1916
    const/4 v1, 0x1

    goto :goto_1

    .line 1926
    :cond_5
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 1927
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v2, :cond_2

    .line 1931
    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1932
    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    goto :goto_2
.end method

.method private updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "socialStatusText"
    .parameter "socialStatusBadge"
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 1832
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1840
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1844
    :goto_0
    return-void

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1880
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1881
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1882
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1883
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1884
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1885
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1886
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1887
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1888
    const/4 v0, 0x1

    return v0
.end method

.method displayFakeCallStatus(Lcom/android/phone/InCallUiState$FakeCall;)V
    .locals 6
    .parameter "call"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 2266
    if-nez p1, :cond_0

    .line 2268
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2328
    :goto_0
    return-void

    .line 2274
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2277
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2278
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection$DisconnectCause;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2281
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v1

    iget v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    .line 2286
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v1, :cond_1

    .line 2287
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2288
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2291
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->updateCallBannerBackground(Lcom/android/phone/InCallUiState$FakeCall;Landroid/view/ViewGroup;)V

    .line 2293
    iget v1, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    if-ne v1, v4, :cond_4

    .line 2295
    iget-object v1, p0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    const v2, 0x7f0b01b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2311
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2312
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2314
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 2315
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2318
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v1, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p1, Lcom/android/phone/InCallUiState$FakeCall;->phoneType:I

    if-eq v1, v4, :cond_7

    .line 2320
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2321
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2325
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/phone/InCallUiState$FakeCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2326
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f0201db

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2327
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2297
    :cond_4
    const/4 v0, 0x0

    .line 2299
    .local v0, operatorName:Ljava/lang/String;
    iget v1, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2300
    const-string v1, "gsm.operator.alpha.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2307
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2301
    :cond_6
    iget v1, p1, Lcom/android/phone/InCallUiState$FakeCall;->slotId:I

    if-nez v1, :cond_5

    .line 2302
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2323
    .end local v0           #operatorName:Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method getLocationOrLabelByCallerInfo(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 7
    .parameter "info"

    .prologue
    .line 1529
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 1530
    .local v0, label:Ljava/lang/String;
    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_1

    .line 1531
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 1544
    :cond_0
    :goto_0
    return-object v0

    .line 1533
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->count:I

    if-gtz v1, :cond_2

    .line 1534
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0454

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1538
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    :goto_1
    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0453

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/internal/telephony/CallerInfo;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method getOperatorNameByCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 2459
    if-nez p1, :cond_1

    .line 2477
    :cond_0
    :goto_0
    return-object v1

    .line 2463
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2464
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 2468
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2469
    const-string v1, "gsm.operator.alpha.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2470
    :cond_2
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v2, :cond_0

    .line 2471
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getSimInfoByCall(Lcom/android/internal/telephony/Call;)Landroid/provider/Telephony$SIMInfo;
    .locals 7
    .parameter "call"

    .prologue
    const/4 v4, 0x0

    .line 2439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 2455
    :cond_1
    :goto_0
    return-object v0

    .line 2443
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2444
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 2445
    .local v3, serialNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 2446
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2450
    :cond_3
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 2451
    .local v1, info2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_4

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    .line 2452
    goto :goto_0

    :cond_4
    move-object v0, v4

    .line 2455
    goto :goto_0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1860
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1861
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1862
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 249
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 250
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 251
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 252
    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 253
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 254
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOperatorName:Landroid/widget/TextView;

    .line 255
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSimIndicator:Landroid/widget/TextView;

    .line 257
    const v1, 0x7f07003b

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallSimIndicator:Landroid/widget/TextView;

    .line 260
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 263
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 264
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    .local v0, inset:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 267
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 268
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 269
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 270
    const v1, 0x7f07002c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 271
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    .line 274
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 275
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 276
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 277
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    .line 278
    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryLabel:Landroid/widget/TextView;

    .line 279
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 799
    const-string v4, "CallCard"

    const-string v5, "onImageLoadComplete."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 818
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 820
    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 821
    .local v0, asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 822
    .local v2, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 823
    .local v3, imageView:Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 825
    .local v1, call:Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 827
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 831
    if-eqz p2, :cond_3

    .line 832
    invoke-static {v3, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 839
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v4, :cond_1

    .line 840
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 842
    :cond_1
    return-void

    .line 816
    .end local v0           #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_2
    const-string v4, "CallCard"

    const-string v5, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 833
    .restart local v0       #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_3
    if-eqz p3, :cond_0

    .line 834
    invoke-static {v3, p3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 16
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 742
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/internal/telephony/Call;

    if-eqz v1, :cond_6

    move-object/from16 v5, p2

    .line 747
    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 748
    .local v5, call:Lcom/android/internal/telephony/Call;
    const/4 v6, 0x0

    .line 749
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    .line 750
    .local v14, phoneType:I
    const/4 v1, 0x2

    if-ne v14, v1, :cond_2

    .line 751
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 758
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v1, v6, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v13

    .line 761
    .local v13, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v15, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 762
    .local v15, presentation:I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v15

    .line 769
    :cond_0
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_5

    .line 770
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 785
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 791
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v13           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v14           #phoneType:I
    .end local v15           #presentation:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 752
    .restart local v5       #call:Lcom/android/internal/telephony/Call;
    .restart local v6       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v14       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v1, 0x1

    if-eq v14, v1, :cond_3

    const/4 v1, 0x3

    if-ne v14, v1, :cond_4

    .line 754
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_0

    .line 756
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    .restart local v13       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v15       #presentation:I
    :cond_5
    iget-object v9, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 774
    .local v9, finalInfo:Lcom/android/internal/telephony/CallerInfo;
    move v10, v15

    .line 775
    .local v10, pre:I
    move-object v11, v5

    .line 776
    .local v11, finalCall:Lcom/android/internal/telephony/Call;
    move-object v12, v6

    .line 777
    .local v12, finalConn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    new-instance v7, Lcom/android/phone/CallCard$2;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;Lcom/android/internal/telephony/CallerInfo;ILcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v7}, Lcom/baidu/internal/contacts/YellowInfoHelper;->queryYellowInfoAsync(Ljava/lang/String;Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;)V

    goto :goto_1

    .line 787
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v9           #finalInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v10           #pre:I
    .end local v11           #finalCall:Lcom/android/internal/telephony/Call;
    .end local v12           #finalConn:Lcom/android/internal/telephony/Connection;
    .end local v13           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v14           #phoneType:I
    .end local v15           #presentation:I
    :cond_6
    move-object/from16 v0, p2

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 789
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 241
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 235
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 1869
    iput p1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    .line 1870
    iput p2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    .line 1871
    return-void
.end method

.method updateElapsedTimeWidget(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public updateForLanguageChange()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 285
    sput-boolean v0, Lcom/android/phone/CallCard;->mLocaleChanged:Z

    .line 286
    sput-boolean v0, Lcom/android/phone/CallCard;->mLCforUserData:Z

    .line 287
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 299
    .local v4, state:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 300
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 301
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 304
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 311
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 320
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    .line 323
    .local v3, skipUpdateRingingCall:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 324
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 361
    .end local v3           #skipUpdateRingingCall:Z
    :goto_1
    return-void

    .line 320
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 331
    .restart local v3       #skipUpdateRingingCall:Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 332
    .end local v3           #skipUpdateRingingCall:Z
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_5

    .line 342
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 359
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1
.end method
