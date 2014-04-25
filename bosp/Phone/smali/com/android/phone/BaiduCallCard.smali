.class public Lcom/android/phone/BaiduCallCard;
.super Lcom/android/phone/CallCard;
.source "BaiduCallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BaiduCallCard$3;,
        Lcom/android/phone/BaiduCallCard$Fade;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "BaiduCallCard"

.field private static final MESSAGE_DELAY:I = 0x1f4

.field private static final MESSAGE_SHOW_UNKNOWN_PHOTO:I = 0x65

.field private static mLCforUserData:Z

.field private static mLocaleChanged:Z


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCouldSwap:Z

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeUpdated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHoldCallerName:Ljava/lang/String;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mLabel:Landroid/widget/TextView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mMainCallerName:Ljava/lang/String;

.field private mMainCallerPhoneNumber:Ljava/lang/String;

.field private mName:Landroid/widget/TextView;

.field private mNeedSwapCalls:Z

.field private mOngoingCallInfo:Landroid/view/ViewGroup;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryLabel:Landroid/widget/TextView;

.field private mSecondaryPhoneNumber:Landroid/widget/TextView;

.field private mSimIconMap:[I

.field private mSimInfo:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

.field private mSocialStatus:Landroid/widget/TextView;

.field private mTextColorCallTypeSip:I

.field mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

.field ongoingCallStateLabel:Landroid/widget/TextView;

.field ongoingElapsedTime:Landroid/widget/TextView;

.field ongoingLabel:Landroid/widget/TextView;

.field ongoingName:Landroid/widget/TextView;

.field ongoingPhoneNumber:Landroid/widget/TextView;

.field ongoingPhoto:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    sput-boolean v0, Lcom/android/phone/BaiduCallCard;->mLocaleChanged:Z

    .line 161
    sput-boolean v0, Lcom/android/phone/BaiduCallCard;->mLCforUserData:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    iput-boolean v0, p0, Lcom/android/phone/BaiduCallCard;->mNeedSwapCalls:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/phone/BaiduCallCard;->mCouldSwap:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTimeUpdated:Z

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSimIconMap:[I

    .line 180
    new-instance v0, Lcom/android/phone/BaiduCallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BaiduCallCard$1;-><init>(Lcom/android/phone/BaiduCallCard;)V

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mHandler:Landroid/os/Handler;

    .line 2089
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mMainCallerPhoneNumber:Ljava/lang/String;

    .line 2090
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mMainCallerName:Ljava/lang/String;

    .line 2091
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mHoldCallerName:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 204
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 207
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/BaiduCallCard;->mDensity:F

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BaiduCallCard;->mCallBannerSidePadding:I

    .line 211
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BaiduCallCard;->mCallBannerTopBottomPadding:I

    .line 215
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BaiduCallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    .line 217
    return-void

    .line 163
    :array_0
    .array-data 0x4
        0x6ct 0x1t 0x2t 0x7ft
        0x6dt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/BaiduCallCard;)Lcom/android/phone/InCallContactPhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BaiduCallCard;Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/BaiduCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BaiduCallCard;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BaiduCallCard;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1970
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1971
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1972
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1974
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1975
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1977
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 20
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 545
    if-nez p2, :cond_1

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 612
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->updateSimInfo(Lcom/android/internal/telephony/Call;)V

    .line 618
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 735
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 740
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BaiduCallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BaiduCallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BaiduCallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 624
    :cond_2
    const/4 v7, 0x0

    .line 625
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 626
    .local v16, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 634
    :goto_2
    const v2, 0x7f07002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 635
    if-nez v7, :cond_6

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 642
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/BaiduCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 628
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 630
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_2

    .line 632
    :cond_5
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

    .line 645
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 649
    .local v10, presentation:I
    const/16 v17, 0x1

    .line 650
    .local v17, runQuery:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 651
    .local v14, o:Ljava/lang/Object;
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_b

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    .line 660
    :goto_3
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 661
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 662
    .local v15, obj:Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v19

    .line 663
    .local v19, updatedNumber:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v18

    .line 664
    .local v18, updatedCnapName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 665
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_c

    move-object v2, v14

    .line 666
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 671
    :cond_7
    :goto_4
    if-eqz v3, :cond_9

    .line 672
    if-eqz v19, :cond_8

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 675
    const/16 v17, 0x1

    .line 677
    :cond_8
    if-eqz v18, :cond_9

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 680
    const/16 v17, 0x1

    .line 685
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v18           #updatedCnapName:Ljava/lang/String;
    .end local v19           #updatedNumber:Ljava/lang/String;
    :cond_9
    if-eqz v17, :cond_e

    .line 687
    sget-boolean v2, Lcom/android/phone/BaiduCallCard;->mLCforUserData:Z

    if-eqz v2, :cond_a

    .line 689
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 690
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/BaiduCallCard;->mLCforUserData:Z

    .line 693
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 695
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_d

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/BaiduCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 655
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_3

    .line 667
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v18       #updatedCnapName:Ljava/lang/String;
    .restart local v19       #updatedNumber:Ljava/lang/String;
    :cond_c
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_7

    move-object v3, v14

    .line 668
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_4

    .line 695
    .end local v15           #obj:Ljava/lang/Object;
    .end local v18           #updatedCnapName:Ljava/lang/String;
    .end local v19           #updatedNumber:Ljava/lang/String;
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    const/4 v11, 0x0

    goto :goto_5

    .line 702
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_e
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_f

    move-object v9, v14

    .line 703
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 705
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 706
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 707
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 712
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/BaiduCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 713
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_f
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_10

    .line 714
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14           #o:Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 719
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/BaiduCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 721
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #o:Ljava/lang/Object;
    :cond_10
    const-string v2, "BaiduCallCard"

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

    goto/16 :goto_1
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 29
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1038
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1221
    :goto_0
    return-void

    .line 1043
    :cond_1
    const/16 v26, 0x0

    .line 1044
    .local v26, showSecondaryCallInfo:Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v27

    .line 1045
    .local v27, state:Lcom/android/internal/telephony/Call$State;
    const-string v23, ""

    .line 1046
    .local v23, phoneNumber:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1047
    .local v18, isContact:Z
    const/16 v17, 0x0

    .line 1048
    .local v17, isConferenceCall:Z
    sget-object v2, Lcom/android/phone/BaiduCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1204
    const/16 v26, 0x0

    .line 1208
    :goto_1
    if-eqz v26, :cond_2

    if-nez v17, :cond_2

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const v3, 0x7f070048

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1210
    .local v20, location:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->getCallLocationOrLabel(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1212
    .local v25, pnumber:Landroid/widget/TextView;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_f

    if-eqz v18, :cond_f

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1218
    .end local v20           #location:Landroid/widget/TextView;
    .end local v25           #pnumber:Landroid/widget/TextView;
    :cond_2
    :goto_2
    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/BaiduCallCard;->mCouldSwap:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/BaiduCallCard;->mCouldSwap:Z

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v26, :cond_11

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/BaiduCallCard;->mHoldCallerName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1057
    :pswitch_0
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0b0031

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f0201d7

    invoke-static {v2, v3}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1063
    const/16 v17, 0x1

    .line 1131
    :goto_5
    const/16 v26, 0x1

    .line 1133
    goto/16 :goto_1

    .line 1069
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v16

    .line 1071
    .local v16, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_9

    .line 1082
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v2}, Lcom/android/phone/BaiduPhoneUtil;->willLoadSmartPhoto(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v19

    .line 1083
    .local v19, loadSmartPhoto:Z
    if-nez v19, :cond_4

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v28

    .line 1086
    .local v28, yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f0201dc

    invoke-static {v2, v3}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1102
    .end local v28           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_4
    :goto_6
    const/4 v7, 0x0

    .line 1103
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    .line 1104
    .local v24, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_6

    .line 1105
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1113
    :goto_7
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1114
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v18, v0

    .line 1116
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 1117
    .local v4, presentation:I
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/BaiduCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_5

    .line 1088
    .end local v4           #presentation:I
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v24           #phoneType:I
    .restart local v28       #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v2, v3}, Lcom/android/phone/BaiduCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1094
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v5, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1096
    .local v22, personUri:Landroid/net/Uri;
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallCard$AsyncLoadCookie;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    const v8, 0x7f07003e

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p2

    invoke-direct {v6, v2, v8, v0}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v3, v5, v0, v1, v6}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1106
    .end local v22           #personUri:Landroid/net/Uri;
    .end local v28           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v24       #phoneType:I
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    move/from16 v0, v24

    if-ne v0, v2, :cond_8

    .line 1108
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto/16 :goto_7

    .line 1110
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1119
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v19           #loadSmartPhoto:Z
    .end local v24           #phoneType:I
    :cond_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v2}, Lcom/android/phone/BaiduPhoneUtil;->willLoadSmartPhoto(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f0201db

    invoke-static {v2, v3}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1122
    :cond_a
    const-string v23, ""

    .line 1123
    const/16 v18, 0x0

    .line 1126
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v2, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v2, v3, v5}, Lcom/android/phone/BaiduPhoneUtil;->updateSmartPhotoForPerson(JLandroid/widget/ImageView;)V

    goto/16 :goto_5

    .line 1139
    .end local v16           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1140
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v13

    .line 1141
    .local v13, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_b

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0b0195

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f0201db

    invoke-static {v2, v3}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1149
    const/16 v17, 0x1

    .line 1191
    :goto_8
    const/16 v26, 0x1

    .line 1193
    goto/16 :goto_1

    .line 1153
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1154
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v2, v7, v0, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v16

    .line 1160
    .restart local v16       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1162
    .local v15, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 1163
    .local v21, name:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1164
    .local v14, forceGenericPhoto:Z
    if-eqz v15, :cond_c

    iget v2, v15, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_c

    .line 1166
    iget v2, v15, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v21

    .line 1167
    const/4 v14, 0x1

    .line 1169
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    if-nez v14, :cond_d

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_d

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v2, v15}, Lcom/android/phone/BaiduCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    .line 1180
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1181
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v18, v0

    goto :goto_8

    .line 1184
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f0201db

    invoke-static {v2, v3}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1186
    const-string v23, ""

    .line 1187
    const/16 v18, 0x0

    goto :goto_8

    .line 1195
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local v13           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v14           #forceGenericPhoto:Z
    .end local v15           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v16           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v21           #name:Ljava/lang/String;
    :cond_e
    const-string v2, "BaiduCallCard"

    const-string v3, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/16 v26, 0x0

    .line 1198
    goto/16 :goto_1

    .line 1214
    .restart local v20       #location:Landroid/widget/TextView;
    .restart local v25       #pnumber:Landroid/widget/TextView;
    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1218
    .end local v20           #location:Landroid/widget/TextView;
    .end local v25           #pnumber:Landroid/widget/TextView;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1219
    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 1048
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
    .line 1249
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1252
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1256
    const v2, 0x7f0b0192

    .line 1329
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1259
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1265
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/BaiduCallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1325
    const v2, 0x7f0b0192

    .restart local v2       #resID:I
    goto :goto_0

    .line 1267
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f0b0014

    .line 1268
    .restart local v2       #resID:I
    goto :goto_0

    .line 1271
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f0b0015

    .line 1272
    .restart local v2       #resID:I
    goto :goto_0

    .line 1275
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f0b0016

    .line 1276
    .restart local v2       #resID:I
    goto :goto_0

    .line 1279
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f0b0017

    .line 1280
    .restart local v2       #resID:I
    goto :goto_0

    .line 1283
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f0b0018

    .line 1284
    .restart local v2       #resID:I
    goto :goto_0

    .line 1287
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f0b0019

    .line 1288
    .restart local v2       #resID:I
    goto :goto_0

    .line 1291
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f0b001b

    .line 1292
    .restart local v2       #resID:I
    goto :goto_0

    .line 1295
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f0b001a

    .line 1296
    .restart local v2       #resID:I
    goto :goto_0

    .line 1300
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f0b001c

    .line 1301
    .restart local v2       #resID:I
    goto :goto_0

    .line 1304
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f0b001d

    .line 1305
    .restart local v2       #resID:I
    goto :goto_0

    .line 1308
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f0b001e

    .line 1309
    .restart local v2       #resID:I
    goto :goto_0

    .line 1312
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f0b001f

    .line 1313
    .restart local v2       #resID:I
    goto :goto_0

    .line 1316
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f0b0021

    .line 1317
    .restart local v2       #resID:I
    goto :goto_0

    .line 1321
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f0b0030

    .line 1322
    .restart local v2       #resID:I
    goto :goto_0

    .line 1265
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
    .line 2303
    if-nez p1, :cond_0

    .line 2307
    const v0, 0x7f0b0192

    .line 2373
    .local v0, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2309
    .end local v0           #resID:I
    :cond_0
    sget-object v1, Lcom/android/phone/BaiduCallCard$3;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2369
    const v0, 0x7f0b0192

    .restart local v0       #resID:I
    goto :goto_0

    .line 2311
    .end local v0           #resID:I
    :pswitch_0
    const v0, 0x7f0b0014

    .line 2312
    .restart local v0       #resID:I
    goto :goto_0

    .line 2315
    .end local v0           #resID:I
    :pswitch_1
    const v0, 0x7f0b0015

    .line 2316
    .restart local v0       #resID:I
    goto :goto_0

    .line 2319
    .end local v0           #resID:I
    :pswitch_2
    const v0, 0x7f0b0016

    .line 2320
    .restart local v0       #resID:I
    goto :goto_0

    .line 2323
    .end local v0           #resID:I
    :pswitch_3
    const v0, 0x7f0b0017

    .line 2324
    .restart local v0       #resID:I
    goto :goto_0

    .line 2327
    .end local v0           #resID:I
    :pswitch_4
    const v0, 0x7f0b0018

    .line 2328
    .restart local v0       #resID:I
    goto :goto_0

    .line 2331
    .end local v0           #resID:I
    :pswitch_5
    const v0, 0x7f0b0019

    .line 2332
    .restart local v0       #resID:I
    goto :goto_0

    .line 2335
    .end local v0           #resID:I
    :pswitch_6
    const v0, 0x7f0b001b

    .line 2336
    .restart local v0       #resID:I
    goto :goto_0

    .line 2339
    .end local v0           #resID:I
    :pswitch_7
    const v0, 0x7f0b001a

    .line 2340
    .restart local v0       #resID:I
    goto :goto_0

    .line 2344
    .end local v0           #resID:I
    :pswitch_8
    const v0, 0x7f0b001c

    .line 2345
    .restart local v0       #resID:I
    goto :goto_0

    .line 2348
    .end local v0           #resID:I
    :pswitch_9
    const v0, 0x7f0b001d

    .line 2349
    .restart local v0       #resID:I
    goto :goto_0

    .line 2352
    .end local v0           #resID:I
    :pswitch_a
    const v0, 0x7f0b001e

    .line 2353
    .restart local v0       #resID:I
    goto :goto_0

    .line 2356
    .end local v0           #resID:I
    :pswitch_b
    const v0, 0x7f0b001f

    .line 2357
    .restart local v0       #resID:I
    goto :goto_0

    .line 2360
    .end local v0           #resID:I
    :pswitch_c
    const v0, 0x7f0b0021

    .line 2361
    .restart local v0       #resID:I
    goto :goto_0

    .line 2365
    .end local v0           #resID:I
    :pswitch_d
    const v0, 0x7f0b0030

    .line 2366
    .restart local v0       #resID:I
    goto :goto_0

    .line 2309
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
    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 1226
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1227
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1228
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1236
    :goto_0
    if-eqz v1, :cond_0

    .line 1237
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 1238
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 1239
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1245
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/BaiduCallCard;->getLocationOrLabelByCallerInfo(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1229
    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1231
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 1233
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

    .line 1240
    .restart local v2       #o:Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_0

    .line 1241
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1612
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1616
    :cond_0
    :goto_0
    return-object v0

    .line 1613
    :cond_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1614
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

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
    .line 2106
    const-string v0, "BaiduCallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    return-void
.end method

.method private setSideMargins(Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "vg"
    .parameter "margin"

    .prologue
    .line 1868
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1871
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1872
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1873
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1874
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 1829
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1831
    const-string v0, "showCachedImage: using the cachedPhoto!"

    invoke-static {v0}, Lcom/android/phone/BaiduCallCard;->log(Ljava/lang/String;)V

    .line 1832
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1837
    :goto_0
    const/4 v0, 0x1

    .line 1840
    :goto_1
    return v0

    .line 1834
    :cond_0
    const-string v0, "showCachedImage: using picture_unknown!"

    invoke-static {v0}, Lcom/android/phone/BaiduCallCard;->log(Ljava/lang/String;)V

    .line 1835
    const v0, 0x7f0201db

    invoke-static {p0, v0}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1839
    :cond_1
    const-string v0, "showCachedImage: return false!"

    invoke-static {v0}, Lcom/android/phone/BaiduCallCard;->log(Ljava/lang/String;)V

    .line 1840
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1845
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1846
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1847
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 1850
    const-string v0, "- showImage - 1 "

    invoke-static {v0}, Lcom/android/phone/BaiduCallCard;->log(Ljava/lang/String;)V

    .line 1851
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1852
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1856
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1857
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1858
    return-void
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 395
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    .line 405
    .local v1, ringing:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v3

    if-nez v3, :cond_2

    .line 406
    :cond_0
    const-string v2, "mInCallScreen or InCallTouchUi is NULL, bailout "

    invoke-static {v2}, Lcom/android/phone/BaiduCallCard;->log(Ljava/lang/String;)V

    .line 417
    :goto_1
    return-void

    .end local v1           #ringing:Z
    :cond_1
    move v1, v2

    .line 395
    goto :goto_0

    .line 411
    .restart local v1       #ringing:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 413
    .local v0, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/phone/BaiduCallCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 13
    .parameter "call"

    .prologue
    .line 871
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 872
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 873
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 874
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 876
    .local v6, phoneType:I
    const/4 v1, 0x0

    .line 877
    .local v1, callStateLabel:Ljava/lang/String;
    const/4 v0, 0x0

    .line 882
    .local v0, bluetoothIconId:I
    sget-object v8, Lcom/android/phone/BaiduCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 945
    const-string v8, "BaiduCallCard"

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

    .line 951
    :cond_0
    :goto_0
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 952
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 956
    const v8, 0x7f0b018d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 961
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 964
    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 971
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 973
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/android/phone/BaiduCallCard$Fade;->hide(Landroid/view/View;I)V

    .line 996
    :goto_2
    sget-object v8, Lcom/android/phone/BaiduCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    .line 1021
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1024
    :goto_3
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/android/phone/BaiduPhoneUtil;->updateRedialUI([Ljava/lang/Object;)V

    .line 1025
    return-void

    .line 889
    :pswitch_0
    const-string v8, "BaiduCallCard"

    const-string v9, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :pswitch_1
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/BaiduPhoneUtil;->mayBusy(Z)V

    goto :goto_0

    .line 905
    :pswitch_2
    const v8, 0x7f0b0193

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 906
    goto :goto_0

    .line 910
    :pswitch_3
    invoke-static {}, Lcom/baidu/phone/BaiduPhoneUtils;->isIpCall()Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0b0431

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    :goto_4
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/phone/BaiduPhoneUtil;->mayBusy(Z)V

    goto :goto_0

    .line 910
    :cond_3
    const v8, 0x7f0b018d

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 918
    :pswitch_4
    const v8, 0x7f0b0190

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 923
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 924
    const v0, 0x7f020181

    goto/16 :goto_0

    .line 935
    :pswitch_5
    const v8, 0x7f0b0194

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 937
    goto/16 :goto_0

    .line 940
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/BaiduCallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 942
    goto/16 :goto_0

    .line 957
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 958
    const v8, 0x7f0b018e

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 978
    :cond_5
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 980
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    if-eqz v0, :cond_6

    .line 984
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 985
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/phone/BaiduCallCard;->mDensity:F

    const/high16 v10, 0x40a0

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_2

    .line 988
    :cond_6
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 998
    :sswitch_0
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    :sswitch_1
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    .line 1001
    .local v3, duration:J
    const-wide/16 v8, 0x3e8

    div-long v8, v3, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/BaiduCallCard;->updateElapsedTimeWidgetEx(J)V

    .line 1002
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTimeUpdated:Z

    goto/16 :goto_3

    .line 1011
    .end local v3           #duration:J
    :sswitch_2
    iget-boolean v8, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTimeUpdated:Z

    if-nez v8, :cond_7

    .line 1012
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/BaiduCallCard;->updateElapsedTimeWidgetEx(J)V

    .line 1014
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTimeUpdated:Z

    .line 1015
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 882
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

    .line 996
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 1887
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1888
    .local v0, phoneType:I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1889
    iget-object v2, p0, Lcom/android/phone/BaiduCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1890
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1891
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/BaiduCallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1899
    :goto_1
    return-void

    .end local v0           #phoneType:I
    :cond_0
    move v0, v1

    .line 1887
    goto :goto_0

    .line 1897
    .restart local v0       #phoneType:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter "call"

    .prologue
    const v6, 0x7f07002e

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1629
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1630
    .local v0, phoneType:I
    if-ne v0, v5, :cond_0

    .line 1637
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f0201d8

    invoke-static {v1, v2}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1638
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0b0195

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1651
    :goto_0
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1652
    if-ne v0, v5, :cond_3

    .line 1653
    invoke-virtual {p0, v6}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1663
    :goto_1
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1664
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1667
    invoke-direct {p0, p1}, Lcom/android/phone/BaiduCallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1679
    return-void

    .line 1639
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1645
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f0201d7

    invoke-static {v1, v2}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1646
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0b018f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1648
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

    .line 1655
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 21
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1353
    const/4 v5, 0x0

    .line 1354
    .local v5, displayNumber:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1355
    .local v8, label:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1356
    .local v11, personUri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 1357
    .local v14, socialStatusText:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1359
    .local v13, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_12

    .line 1375
    sget-boolean v16, Lcom/android/phone/BaiduCallCard;->mLocaleChanged:Z

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1376
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x10402ea

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1380
    :cond_0
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/phone/BaiduCallCard;->mLocaleChanged:Z

    .line 1391
    :cond_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1392
    .local v10, number:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v16, "sip:"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1393
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1396
    :cond_2
    if-eqz v10, :cond_3

    .line 1397
    invoke-static {}, Lcom/android/phone/HyphonManager;->getInstance()Lcom/android/phone/HyphonManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1400
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1406
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1409
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, displayName:Ljava/lang/String;
    :cond_4
    :goto_0
    if-eqz v10, :cond_5

    .line 1470
    :cond_5
    :goto_1
    sget-object v16, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1478
    .end local v10           #number:Ljava/lang/String;
    :goto_2
    const/4 v6, 0x0

    .line 1479
    .local v6, displayYellowInfo:Z
    const v12, 0x7f0201db

    .line 1480
    .local v12, resId:I
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v15

    .line 1482
    .local v15, yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget v0, v15, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 1483
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1484
    iget-object v4, v15, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->name:Ljava/lang/String;

    .line 1485
    const v12, 0x7f0201dc

    .line 1486
    const/4 v6, 0x1

    .line 1490
    :cond_6
    :goto_3
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    aput-object v18, v17, v16

    const/16 v18, 0x1

    if-eqz v6, :cond_14

    if-eqz p3, :cond_7

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    :cond_7
    const/16 v16, 0x1

    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v17, v18

    const/16 v16, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v16

    invoke-static/range {v17 .. v17}, Lcom/android/phone/BaiduPhoneUtil;->showDTMFforServiceNumber([Ljava/lang/Object;)V

    .line 1495
    .end local v15           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v16

    if-eqz v16, :cond_15

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x7f0b0195

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 1500
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1512
    if-eqz p3, :cond_16

    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move/from16 v16, v0

    if-nez v16, :cond_16

    .line 1513
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1567
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getDrawableOfOngoingCall()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1568
    .local v7, draw:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1c

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v16

    if-nez v16, :cond_1c

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BaiduCallCard;->mDensity:F

    move/from16 v17, v0

    const/high16 v18, 0x40a0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1578
    :goto_7
    if-eqz p1, :cond_1d

    .line 1579
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BaiduCallCard;->mMainCallerPhoneNumber:Ljava/lang/String;

    .line 1580
    if-nez v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .end local v4           #displayName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/BaiduCallCard;->mMainCallerName:Ljava/lang/String;

    .line 1581
    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/BaiduCallCard;->getLocationOrLabelByCallerInfo(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1583
    if-eqz v6, :cond_c

    .line 1584
    const-string v8, ""

    .line 1592
    :cond_c
    :goto_8
    if-eqz v8, :cond_20

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v16

    if-nez v16, :cond_20

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_20

    .line 1593
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1602
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/BaiduPhoneUtil;->updatePhoneLabelDisplay(Landroid/widget/TextView;)V

    .line 1605
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1607
    return-void

    .line 1411
    .end local v6           #displayYellowInfo:Z
    .end local v7           #draw:Landroid/graphics/drawable/Drawable;
    .end local v12           #resId:I
    .restart local v10       #number:Ljava/lang/String;
    :cond_d
    sget v16, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 1415
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1417
    .end local v4           #displayName:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 1419
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1420
    .restart local v4       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1421
    move-object v5, v10

    goto/16 :goto_0

    .line 1431
    .end local v4           #displayName:Ljava/lang/String;
    :cond_f
    move-object v4, v10

    .line 1434
    .restart local v4       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1438
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1455
    .end local v4           #displayName:Ljava/lang/String;
    :cond_10
    sget v16, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_11

    .line 1459
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1463
    .end local v4           #displayName:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1464
    .restart local v4       #displayName:Ljava/lang/String;
    move-object v5, v10

    .line 1465
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_1

    .line 1474
    .end local v4           #displayName:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #displayName:Ljava/lang/String;
    goto/16 :goto_2

    .line 1487
    .restart local v6       #displayYellowInfo:Z
    .restart local v12       #resId:I
    .restart local v15       #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_13
    iget v0, v15, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 1488
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1490
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1498
    .end local v15           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1515
    :cond_16
    if-eqz p1, :cond_17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v16, v0

    if-eqz v16, :cond_17

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    .line 1518
    :cond_17
    if-eqz v6, :cond_19

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v15

    .line 1520
    .restart local v15       #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget-object v0, v15, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->photo:[B

    move-object/from16 v16, v0

    if-nez v16, :cond_18

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/phone/InCallContactPhoto;->setImageResource(I)V

    .line 1525
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    goto/16 :goto_6

    .line 1522
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    new-instance v17, Ljava/io/ByteArrayInputStream;

    iget-object v0, v15, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->photo:[B

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v18, "yellow photo"

    invoke-static/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 1527
    .end local v15           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/BaiduCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 1528
    if-nez v11, :cond_1a

    .line 1529
    const-string v16, "BaiduCallCard"

    const-string v17, "personPri is null. Just use Unknown picture."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    const v17, 0x7f0201db

    invoke-static/range {v16 .. v17}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    .line 1531
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 1541
    invoke-static/range {p1 .. p1}, Lcom/android/phone/BaiduPhoneUtil;->willLoadSmartPhoto(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v9

    .line 1542
    .local v9, loadSmartPhoto:Z
    if-nez v9, :cond_1b

    .line 1543
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/phone/BaiduCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1551
    const-string v16, "BaiduCallCard"

    const-string v17, "onImageLoadComplete. begin "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Lcom/android/phone/CallCard$AsyncLoadCookie;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->ongoingPhoto:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    invoke-static {v0, v1, v11, v2, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    const-wide/16 v18, 0x1f4

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 1562
    :cond_1b
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/phone/BaiduPhoneUtil;->updateSmartPhotoForPerson(JLandroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 1574
    .end local v9           #loadSmartPhoto:Z
    .restart local v7       #draw:Landroid/graphics/drawable/Drawable;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1587
    :cond_1d
    const-string v8, ""

    .line 1588
    const-string v16, ""

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BaiduCallCard;->mMainCallerPhoneNumber:Ljava/lang/String;

    .line 1589
    if-nez v4, :cond_1e

    const-string v4, ""

    .end local v4           #displayName:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/BaiduCallCard;->mMainCallerName:Ljava/lang/String;

    goto/16 :goto_8

    .line 1596
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1600
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/widget/TextView;ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 12
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
    .line 2117
    if-nez p7, :cond_0

    .line 2118
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2119
    iget-object v8, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2124
    :cond_0
    const/4 v2, 0x0

    .line 2125
    .local v2, displayNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2126
    .local v3, label:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2127
    .local v5, personUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 2128
    .local v7, socialStatusText:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2130
    .local v6, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_c

    .line 2146
    sget-boolean v8, Lcom/android/phone/BaiduCallCard;->mLocaleChanged:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2147
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2148
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10402ea

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2151
    :cond_1
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/phone/BaiduCallCard;->mLocaleChanged:Z

    .line 2163
    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2164
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v8, "sip:"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2165
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2167
    :cond_3
    invoke-static {}, Lcom/android/phone/HyphonManager;->getInstance()Lcom/android/phone/HyphonManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2169
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2175
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2179
    invoke-direct {p0, p2}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .line 2241
    .local v1, displayName:Ljava/lang/String;
    :cond_4
    :goto_0
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2248
    .end local v4           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2249
    const v8, 0x7f0b0195

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 2253
    :goto_2
    const/4 v8, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2268
    if-nez p7, :cond_6

    .line 2269
    if-eqz p3, :cond_e

    if-eqz p1, :cond_5

    iget-boolean v8, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v8, :cond_e

    .line 2270
    :cond_5
    const/4 v8, 0x4

    move-object/from16 v0, p10

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2281
    :cond_6
    :goto_3
    if-eqz v2, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v8

    if-nez v8, :cond_10

    .line 2282
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2283
    const/4 v8, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2288
    :goto_4
    if-eqz v3, :cond_11

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v8

    if-nez v8, :cond_11

    .line 2289
    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2290
    const/4 v8, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2298
    :goto_5
    return-void

    .line 2181
    .end local v1           #displayName:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    :cond_7
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v8, :cond_8

    .line 2187
    invoke-direct {p0, p2}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 2189
    .end local v1           #displayName:Ljava/lang/String;
    :cond_8
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2191
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2192
    .restart local v1       #displayName:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2193
    move-object v2, v4

    goto :goto_0

    .line 2203
    .end local v1           #displayName:Ljava/lang/String;
    :cond_9
    move-object v1, v4

    .line 2208
    .restart local v1       #displayName:Ljava/lang/String;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2214
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    goto :goto_0

    .line 2224
    .end local v1           #displayName:Ljava/lang/String;
    :cond_a
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v8, :cond_b

    .line 2230
    invoke-direct {p0, p2}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 2234
    .end local v1           #displayName:Ljava/lang/String;
    :cond_b
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2235
    .restart local v1       #displayName:Ljava/lang/String;
    move-object v2, v4

    .line 2236
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 2245
    .end local v1           #displayName:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/phone/BaiduCallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 2251
    :cond_d
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2271
    :cond_e
    if-eqz p1, :cond_f

    iget v8, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v8, :cond_f

    .line 2272
    iget v8, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move-object/from16 v0, p10

    invoke-static {v0, v8}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 2273
    :cond_f
    move-object/from16 v0, p10

    invoke-static {v0, p1}, Lcom/android/phone/BaiduCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2276
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v11, p0, Lcom/android/phone/BaiduCallCard;->ongoingPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p4

    invoke-direct {v10, v11, p1, v0}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v8, v9, v5, p0, v10}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2285
    :cond_10
    const/16 v8, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2292
    :cond_11
    const/16 v8, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 427
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 430
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 431
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_2

    .line 446
    move-object v1, v0

    .line 449
    const/4 v0, 0x0

    .line 452
    :cond_2
    const-string v7, ""

    iput-object v7, p0, Lcom/android/phone/BaiduCallCard;->mMainCallerPhoneNumber:Ljava/lang/String;

    .line 453
    const-string v7, ""

    iput-object v7, p0, Lcom/android/phone/BaiduCallCard;->mMainCallerName:Ljava/lang/String;

    .line 454
    const-string v7, ""

    iput-object v7, p0, Lcom/android/phone/BaiduCallCard;->mHoldCallerName:Ljava/lang/String;

    .line 455
    new-array v7, v11, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    invoke-static {v7}, Lcom/android/phone/BaiduPhoneUtil;->preventShowDialpad([Ljava/lang/Object;)V

    .line 456
    invoke-direct {p0, p1, v1}, Lcom/android/phone/BaiduCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 458
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 460
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 461
    .local v4, phoneType:I
    if-ne v4, v11, :cond_5

    .line 462
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 465
    invoke-direct {p0, p1, v1}, Lcom/android/phone/BaiduCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 476
    :cond_3
    :goto_1
    iget-boolean v7, p0, Lcom/android/phone/BaiduCallCard;->mNeedSwapCalls:Z

    if-eqz v7, :cond_0

    .line 477
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 482
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 483
    .local v2, lo:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 484
    .local v6, v:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 485
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    .line 488
    iput-boolean v9, p0, Lcom/android/phone/BaiduCallCard;->mNeedSwapCalls:Z

    goto :goto_0

    .line 469
    .end local v2           #lo:Landroid/widget/LinearLayout;
    .end local v6           #v:Landroid/view/View;
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 471
    :cond_5
    if-eq v4, v10, :cond_6

    const/4 v7, 0x3

    if-ne v4, v7, :cond_3

    .line 473
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_1
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "cm"

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 535
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 536
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter "call"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    .line 1693
    const/4 v4, 0x0

    .line 1697
    .local v4, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1698
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/BaiduCallCard$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    .line 1743
    const/4 v0, 0x0

    .line 1745
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v1, 0x0

    .line 1746
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1747
    .local v3, phoneType:I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_5

    .line 1748
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1756
    :goto_0
    if-eqz v1, :cond_0

    .line 1757
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 1758
    .local v2, o:Ljava/lang/Object;
    instance-of v7, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_8

    move-object v0, v2

    .line 1759
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1766
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 1767
    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1781
    :cond_1
    if-nez v4, :cond_a

    .line 1782
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1783
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v7, v0}, Lcom/android/phone/BaiduCallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 1785
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v5

    .line 1786
    .local v5, photoUri:Landroid/net/Uri;
    if-nez v5, :cond_9

    .line 1787
    const-string v7, "BaiduCallCard"

    const-string v8, "photoUri became null. Show default avatar icon"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v8, 0x7f0201db

    invoke-static {v7, v8}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1803
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v11}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1815
    .end local v5           #photoUri:Landroid/net/Uri;
    :cond_3
    if-eqz v4, :cond_4

    .line 1817
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v7, v4}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1819
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v10}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1821
    :cond_4
    :goto_3
    return-void

    .line 1749
    :cond_5
    if-eq v3, v12, :cond_6

    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    .line 1751
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 1753
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1760
    .restart local v2       #o:Ljava/lang/Object;
    :cond_8
    instance-of v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_0

    .line 1761
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 1793
    .restart local v5       #photoUri:Landroid/net/Uri;
    :cond_9
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v7, v13}, Lcom/android/phone/InCallContactPhoto;->setTag(Ljava/lang/Object;)V

    .line 1795
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1797
    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->willLoadSmartPhoto(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1798
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v9, p0, Lcom/android/phone/BaiduCallCard;->ongoingPhoto:Landroid/widget/ImageView;

    invoke-direct {v8, v9, v0, v13}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v12, v7, v5, p0, v8}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_2

    .line 1808
    .end local v5           #photoUri:Landroid/net/Uri;
    :cond_a
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-static {v7, v4}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1809
    iget-object v7, p0, Lcom/android/phone/BaiduCallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v11}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    const/4 v5, 0x0

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 503
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v3}, Lcom/android/phone/BaiduCallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 507
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 508
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v3}, Lcom/android/phone/BaiduPhoneUtil;->getCallerInfo(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 509
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v6, :cond_1

    .line 511
    :cond_0
    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    if-nez v4, :cond_1

    .line 512
    iget-object v6, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object v4, v5

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v4}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 520
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/phone/BaiduCallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 521
    return-void
.end method

.method private updateSimInfo(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 1980
    invoke-static {}, Lcom/android/phone/BaiduPhoneAdapter;->isDualMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    invoke-static {}, Lcom/android/phone/BaiduPhoneAdapter;->getBusySlot()I

    move-result v0

    .line 1982
    .local v0, slot:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/phone/BaiduPhoneAdapter;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSimInfo:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    .line 1985
    .end local v0           #slot:I
    :cond_0
    :goto_0
    return-void

    .line 1983
    .restart local v0       #slot:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, v1}, Lcom/android/phone/BaiduPhoneAdapter;->getSimInfoBySlot(ILandroid/content/Context;)Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSimInfo:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    goto :goto_0
.end method

.method private updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "socialStatusText"
    .parameter "socialStatusBadge"
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 1910
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSocialStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1915
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1916
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1918
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSocialStatus:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/BaiduCallCard;->mDensity:F

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1922
    :goto_0
    return-void

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSocialStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method clearStuff()V
    .locals 2

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2565
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2566
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2567
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2568
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1958
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1959
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1960
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1961
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1962
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1963
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1964
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1965
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BaiduCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1966
    const/4 v0, 0x1

    return v0
.end method

.method getDrawableOfOngoingCall()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 2571
    const v2, 0x7f02016c

    .line 2573
    .local v2, resId:I
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mSimInfo:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    if-eqz v3, :cond_0

    .line 2574
    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mSimIconMap:[I

    iget-object v4, p0, Lcom/android/phone/BaiduCallCard;->mSimInfo:Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;

    iget v4, v4, Lcom/android/phone/BaiduPhoneAdapter$BaiduSIMInfo;->simSlotId:I

    aget v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2580
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2582
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    return-object v0

    .line 2576
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 2577
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "out of range of array,should never come here"

    invoke-static {v3}, Lcom/android/phone/BaiduCallCard;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHoldCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mHoldCallerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mMainCallerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCallerPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mMainCallerPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1938
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1939
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1940
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const v1, 0x7f07002e

    .line 2378
    iget-boolean v0, p0, Lcom/android/phone/BaiduCallCard;->mCouldSwap:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2379
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 2383
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2381
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 260
    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 261
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 262
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 263
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 264
    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 265
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 270
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 272
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BaiduCallCard;->mTextColorCallTypeSip:I

    .line 275
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 276
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 277
    .local v0, inset:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 279
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    .line 280
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 281
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    .line 282
    const v1, 0x7f07002c

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 283
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSocialStatus:Landroid/widget/TextView;

    .line 286
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 287
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 288
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 289
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryPhoneNumber:Landroid/widget/TextView;

    .line 290
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mSecondaryLabel:Landroid/widget/TextView;

    .line 293
    const v1, 0x7f07003d

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    .line 294
    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingName:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingPhoneNumber:Landroid/widget/TextView;

    .line 296
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingLabel:Landroid/widget/TextView;

    .line 297
    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingCallStateLabel:Landroid/widget/TextView;

    .line 298
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingElapsedTime:Landroid/widget/TextView;

    .line 299
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingPhoto:Landroid/widget/ImageView;

    .line 301
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/phone/BaiduCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"

    .prologue
    .line 819
    const-string v4, "BaiduCallCard"

    const-string v5, "onImageLoadComplete."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v4, p0, Lcom/android/phone/BaiduCallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    iget-object v4, p0, Lcom/android/phone/BaiduCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 838
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/BaiduCallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 840
    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 841
    .local v0, asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 842
    .local v2, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 843
    .local v3, imageView:Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 845
    .local v1, call:Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 847
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 851
    if-eqz p2, :cond_3

    .line 852
    invoke-static {v3, p2}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 853
    iget-object v4, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    check-cast v4, Lcom/android/phone/InCallContactPhotoEx;

    iget-object v5, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallContactPhotoEx;->getOriginalDrawable(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v4, :cond_1

    .line 861
    invoke-direct {p0, v1}, Lcom/android/phone/BaiduCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 863
    :cond_1
    return-void

    .line 836
    .end local v0           #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_2
    const-string v4, "BaiduCallCard"

    const-string v5, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 854
    .restart local v0       #asyncLoadCookie:Lcom/android/phone/CallCard$AsyncLoadCookie;
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #callerInfo:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_3
    if-eqz p3, :cond_0

    .line 855
    invoke-static {v3, p3}, Lcom/android/phone/BaiduCallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 16
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 760
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/android/internal/telephony/Call;

    if-eqz v1, :cond_6

    move-object/from16 v5, p2

    .line 765
    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 766
    .local v5, call:Lcom/android/internal/telephony/Call;
    const/4 v6, 0x0

    .line 767
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    .line 768
    .local v14, phoneType:I
    const/4 v1, 0x2

    if-ne v14, v1, :cond_2

    .line 769
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 776
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v1, v6, v0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v13

    .line 779
    .local v13, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v15, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 780
    .local v15, presentation:I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v15

    .line 787
    :cond_0
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_5

    .line 788
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BaiduCallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 789
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1}, Lcom/android/phone/BaiduCallCard;->updateOngoingCallControl(Lcom/android/internal/telephony/Call;Z)V

    .line 805
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/BaiduCallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 811
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v13           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v14           #phoneType:I
    .end local v15           #presentation:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 770
    .restart local v5       #call:Lcom/android/internal/telephony/Call;
    .restart local v6       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v14       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v1, 0x1

    if-eq v14, v1, :cond_3

    const/4 v1, 0x3

    if-ne v14, v1, :cond_4

    .line 772
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_0

    .line 774
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

    .line 792
    .restart local v13       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v15       #presentation:I
    :cond_5
    iget-object v9, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 793
    .local v9, finalInfo:Lcom/android/internal/telephony/CallerInfo;
    move v10, v15

    .line 794
    .local v10, pre:I
    move-object v11, v5

    .line 795
    .local v11, finalCall:Lcom/android/internal/telephony/Call;
    move-object v12, v6

    .line 796
    .local v12, finalConn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BaiduCallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    new-instance v7, Lcom/android/phone/BaiduCallCard$2;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/phone/BaiduCallCard$2;-><init>(Lcom/android/phone/BaiduCallCard;Lcom/android/internal/telephony/CallerInfo;ILcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v7}, Lcom/baidu/internal/contacts/YellowInfoHelper;->queryYellowInfoAsync(Ljava/lang/String;Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;)V

    goto :goto_1

    .line 807
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

    .line 809
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BaiduCallCard;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 5
    .parameter "timeElapsed"

    .prologue
    .line 237
    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    const v4, 0x7f070043

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 238
    .local v2, ongoing_elapsedTime:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    const v4, 0x7f070044

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 239
    .local v1, ongoing_callStateLabel:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    const v4, 0x7f07003d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, ongoing:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 242
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 221
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mCallTime:Lcom/android/phone/CallTime;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setListener(Lcom/android/phone/CallTime$OnTickListener;)V

    .line 222
    :cond_0
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 1947
    iput p1, p0, Lcom/android/phone/BaiduCallCard;->mIncomingCallWidgetHintTextResId:I

    .line 1948
    iput p2, p0, Lcom/android/phone/BaiduCallCard;->mIncomingCallWidgetHintColorResId:I

    .line 1949
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 251
    return-void
.end method

.method public swapCalls()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BaiduCallCard;->mNeedSwapCalls:Z

    .line 254
    return-void
.end method

.method updateElapsedTimeWidgetEx(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 226
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/BaiduCallCard;->onTickForCallTimeElapsed(J)V

    .line 232
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateForLanguageChange()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 308
    sput-boolean v0, Lcom/android/phone/BaiduCallCard;->mLocaleChanged:Z

    .line 309
    sput-boolean v0, Lcom/android/phone/BaiduCallCard;->mLCforUserData:Z

    .line 310
    return-void
.end method

.method updateOngoingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 22
    .parameter "cm"

    .prologue
    .line 2445
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    .line 2447
    .local v14, state:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 2448
    .local v13, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2449
    .local v7, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2451
    .local v3, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2454
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/BaiduCallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2561
    :cond_0
    :goto_0
    return-void

    .line 2460
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/phone/BaiduPhoneUtil;->displaySmallImage(Lcom/android/internal/telephony/Call;Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2465
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2467
    .local v5, callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2469
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/phone/BaiduCallCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->hideCallCardElements()V

    .line 2473
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-static {v0, v13, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 2476
    .local v6, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v11, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2477
    .local v11, o:Lcom/android/internal/telephony/CallerInfo;
    instance-of v0, v11, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    check-cast v11, Lcom/android/internal/telephony/CallerInfo;

    .end local v11           #o:Lcom/android/internal/telephony/CallerInfo;
    move-object v8, v11

    .line 2478
    .local v8, info:Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    const/4 v9, 0x0

    .line 2479
    .local v9, isContactOrYellowPage:Z
    if-eqz v8, :cond_2

    .line 2480
    iget-boolean v9, v8, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 2482
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Lcom/android/phone/BaiduCallCard;->updateOngoingCallControl(Lcom/android/internal/telephony/Call;Z)V

    .line 2536
    .end local v5           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v9           #isContactOrYellowPage:Z
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7

    .line 2537
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 2538
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2539
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    if-nez v17, :cond_12

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 2542
    .local v10, lo:Landroid/widget/LinearLayout;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2543
    .local v15, v:Landroid/view/View;
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2544
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2545
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2548
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc8

    invoke-virtual/range {v17 .. v21}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2559
    .end local v10           #lo:Landroid/widget/LinearLayout;
    .end local v15           #v:Landroid/view/View;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    if-nez v17, :cond_0

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2477
    .restart local v5       #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v11       #o:Lcom/android/internal/telephony/CallerInfo;
    :cond_8
    check-cast v11, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v11           #o:Lcom/android/internal/telephony/CallerInfo;
    iget-object v8, v11, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 2483
    .end local v5           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/phone/BaiduPhoneUtil;->displaySmallImage(Lcom/android/internal/telephony/Call;Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 2484
    :cond_a
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_b

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2487
    :cond_b
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    if-nez v17, :cond_c

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 2488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2490
    :cond_d
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object v4, v7

    .line 2504
    .local v4, call:Lcom/android/internal/telephony/Call;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-static {v0, v4, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 2506
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    const v12, 0x7f0201db

    .line 2507
    .local v12, resId:I
    iget-object v11, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2508
    .restart local v11       #o:Lcom/android/internal/telephony/CallerInfo;
    instance-of v0, v11, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    check-cast v11, Lcom/android/internal/telephony/CallerInfo;

    .end local v11           #o:Lcom/android/internal/telephony/CallerInfo;
    move-object v8, v11

    .line 2509
    .restart local v8       #info:Lcom/android/internal/telephony/CallerInfo;
    :goto_5
    if-eqz v8, :cond_3

    .line 2511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v16

    .line 2512
    .local v16, yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 2513
    const v12, 0x7f0201dc

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v12           #resId:I
    .end local v16           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_e
    move-object v4, v3

    .line 2490
    goto :goto_4

    .line 2508
    .restart local v4       #call:Lcom/android/internal/telephony/Call;
    .restart local v6       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v11       #o:Lcom/android/internal/telephony/CallerInfo;
    .restart local v12       #resId:I
    :cond_f
    check-cast v11, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v11           #o:Lcom/android/internal/telephony/CallerInfo;
    iget-object v8, v11, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_5

    .line 2515
    .restart local v8       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v16       #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/phone/BaiduPhoneUtil;->displaySmallImage(Lcom/android/internal/telephony/CallerInfo;Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2520
    .restart local v5       #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2523
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BaiduCallCard;->hideCallCardElements()V

    .line 2525
    iget-boolean v9, v8, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 2526
    .restart local v9       #isContactOrYellowPage:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/android/phone/BaiduCallCard;->updateOngoingCallControl(Lcom/android/internal/telephony/Call;Z)V

    goto/16 :goto_2

    .line 2530
    .end local v4           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #callInfoLp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v8           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v9           #isContactOrYellowPage:Z
    .end local v12           #resId:I
    .end local v16           #yi:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2554
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfa

    invoke-virtual/range {v17 .. v21}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BaiduCallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_3
.end method

.method updateOngoingCallControl(Lcom/android/internal/telephony/Call;Z)V
    .locals 7
    .parameter "call"
    .parameter "isContactOrYellow"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2396
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/BaiduCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2398
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2399
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingPhoneNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/BaiduCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2404
    :goto_0
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2405
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/BaiduCallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2409
    :goto_1
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingLabel:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/phone/BaiduPhoneUtil;->updatePhoneLabelDisplay(Landroid/widget/TextView;)V

    .line 2411
    invoke-virtual {p0}, Lcom/android/phone/BaiduCallCard;->getDrawableOfOngoingCall()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2420
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingElapsedTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/BaiduCallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2422
    iget-object v2, p0, Lcom/android/phone/BaiduCallCard;->ongoingPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    check-cast v1, Lcom/android/phone/InCallContactPhotoEx;

    iget-object v3, p0, Lcom/android/phone/BaiduCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallContactPhotoEx;->getOriginalDrawable(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2424
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 2425
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2426
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingCallStateLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/BaiduCallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2427
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2428
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingCallStateLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/BaiduCallCard;->mDensity:F

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2430
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2437
    :goto_2
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mOngoingCallInfo:Landroid/view/ViewGroup;

    invoke-static {p1, v1}, Lcom/android/phone/BaiduPhoneUtil;->displaySmallImage(Lcom/android/internal/telephony/Call;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2438
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2440
    :cond_0
    return-void

    .line 2401
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingPhoneNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2407
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2433
    .restart local v0       #draw:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2434
    iget-object v1, p0, Lcom/android/phone/BaiduCallCard;->ongoingElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 322
    .local v4, state:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 323
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 324
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 326
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_1

    .line 327
    iput-boolean v3, p0, Lcom/android/phone/BaiduCallCard;->mCouldSwap:Z

    .line 330
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/phone/BaiduCallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 337
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 346
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_2

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-nez v6, :cond_2

    .line 349
    .local v3, skipUpdateRingingCall:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 350
    invoke-direct {p0, p1}, Lcom/android/phone/BaiduCallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 388
    .end local v3           #skipUpdateRingingCall:Z
    :goto_2
    return-void

    .line 328
    :cond_1
    iput-boolean v5, p0, Lcom/android/phone/BaiduCallCard;->mCouldSwap:Z

    goto :goto_0

    :cond_2
    move v3, v5

    .line 346
    goto :goto_1

    .line 357
    .restart local v3       #skipUpdateRingingCall:Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/BaiduCallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 387
    .end local v3           #skipUpdateRingingCall:Z
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/phone/BaiduCallCard;->updateOngoingCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    .line 358
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_6

    .line 368
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/BaiduCallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_3

    .line 385
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/BaiduCallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_3
.end method
