.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# static fields
.field private static final ACCEPT_CALL_ANIMATION:I = 0x3e8

.field private static final ANSWER_CALL_ID:I = 0x0

.field private static final BOUND_SIZE:I = 0x3c

.field private static final DBG:Z = false

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final ENABLE_PING_ON_RING_EVENTS:Z = false

.field private static final INCOMING_CALL_WIDGET_PING:I = 0x65

.field private static final IN_CALL_WIDGET_TRANSITION_TIME:I = 0xfa

.field private static final LOG_TAG:Ljava/lang/String; = "InCallTouchUi"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x960L

.field private static final SEND_SMS_ID:I = 0x1

.field private static final SEND_SMS_ID_2:I = 0x3


# instance fields
.field final INCALL_INCOMING_ONE_WAY_CALL:I

.field final INCALL_INCOMING_THREE_WAY_CALL:I

.field final INCALL_INCOMING_THRRE_TWO_CHANGING:I

.field final INCALL_INCOMING_TWO_WAY_CALL:I

.field private mAddButton:Landroid/view/View;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field mCurrentIncallIncomingcallState:I

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncallIncomingcallView:Landroid/view/View;

.field private mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/view/View;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mRecordContainer:Landroid/widget/TextView;

.field private mRecordDrawable:Landroid/graphics/drawable/Drawable;

.field private mStopRecordDrawable:Landroid/graphics/drawable/Drawable;

.field private mSwapButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 128
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 321
    iput v2, p0, Lcom/android/phone/InCallTouchUi;->INCALL_INCOMING_ONE_WAY_CALL:I

    .line 322
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->INCALL_INCOMING_TWO_WAY_CALL:I

    .line 323
    iput v4, p0, Lcom/android/phone/InCallTouchUi;->INCALL_INCOMING_THREE_WAY_CALL:I

    .line 324
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->INCALL_INCOMING_THRRE_TWO_CHANGING:I

    .line 325
    iput v2, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 161
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040016

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/InCallTouchUi;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;)Lcom/baidu/multiwaveview/MultiWaveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 984
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 985
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 987
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 989
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 1258
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1269
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1270
    new-instance v1, Lcom/android/phone/InCallTouchUi$5;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$5;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1286
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private initializeRecordRes()V
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordContainer:Landroid/widget/TextView;

    .line 1578
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordContainer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1579
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordContainer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1590
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1599
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-void
.end method

.method private resetIncomingCallWidget()V
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    if-eqz v0, :cond_0

    .line 1252
    :cond_0
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1002
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 1004
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v10, 0x7f0f

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1006
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1007
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1011
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 1013
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 1020
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f0700d4

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1021
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1027
    const v7, 0x7f0700d5

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1028
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f0700d6

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1029
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 1030
    .local v5, usingHeadset:Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1031
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1032
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1033
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1038
    const v7, 0x7f0700d7

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1039
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1043
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 1048
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1049
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 1030
    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter "ringingCall"

    .prologue
    const/16 v6, 0x65

    const/4 v5, 0x0

    .line 1296
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1297
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 1299
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 1307
    :cond_0
    invoke-static {p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1308
    .local v0, allowRespondViaSms:Z
    if-eqz v0, :cond_1

    .line 1311
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1312
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1314
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 1335
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 1336
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v5}, Lcom/baidu/multiwaveview/MultiWaveView;->reset(Z)V

    .line 1337
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v5}, Lcom/baidu/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 1349
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1350
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1357
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/phone/BaiduPhoneUtil;->onShowInComingCallWidget([Ljava/lang/Object;)V

    .line 1358
    return-void

    .line 1318
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1319
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1321
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 12
    .parameter "inCallControlState"

    .prologue
    .line 875
    const/4 v8, 0x0

    .line 878
    .local v8, showToggleStateIndication:Z
    const/4 v6, 0x0

    .line 881
    .local v6, showMoreIndicator:Z
    const/4 v7, 0x0

    .line 882
    .local v7, showSpeakerIcon:Z
    const/4 v5, 0x0

    .line 883
    .local v5, showHandsetIcon:Z
    const/4 v4, 0x0

    .line 884
    .local v4, showBluetoothIcon:Z
    const/4 v9, 0x0

    .line 886
    .local v9, showWiredHeadset:Z
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v10, :cond_5

    .line 889
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 896
    const/4 v6, 0x1

    .line 897
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v10, :cond_0

    .line 898
    const/4 v4, 0x1

    .line 899
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0c0034

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    .line 950
    :goto_0
    const/4 v0, 0x0

    .line 951
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 953
    .local v1, VISIBLE:I
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 954
    .local v2, ds:[Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x1

    aget-object v3, v2, v10

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 957
    .local v3, layers:Landroid/graphics/drawable/LayerDrawable;
    const v10, 0x7f0700ce

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v8, :cond_7

    const/16 v10, 0xff

    :goto_1
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 960
    const v10, 0x7f0700cf

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v6, :cond_8

    const/16 v10, 0xff

    :goto_2
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 963
    const v10, 0x7f0700d0

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v4, :cond_9

    const/16 v10, 0xff

    :goto_3
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 966
    const v10, 0x7f0700d1

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v5, :cond_a

    const/16 v10, 0xff

    :goto_4
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 969
    const v10, 0x7f0700d2

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v7, :cond_b

    const/16 v10, 0xff

    :goto_5
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 972
    const v10, 0x7f0700d3

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v9, :cond_c

    const/16 v10, 0xff

    :goto_6
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 974
    return-void

    .line 900
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #ds:[Landroid/graphics/drawable/Drawable;
    .end local v3           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v10, :cond_1

    .line 901
    const/4 v7, 0x1

    .line 902
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0c0031

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    goto :goto_0

    .line 905
    :cond_1
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_2

    .line 907
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_3

    const v10, 0x7f0c0033

    :goto_7
    invoke-virtual {v11, v10}, Landroid/widget/CompoundButton;->setText(I)V

    .line 909
    :cond_2
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 910
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 907
    :cond_3
    const v10, 0x7f0c0032

    goto :goto_7

    .line 912
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 920
    :cond_5
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_6

    .line 923
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 927
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 930
    const/4 v8, 0x1

    .line 931
    const/4 v7, 0x1

    .line 932
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0c0031

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    goto/16 :goto_0

    .line 938
    :cond_6
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 939
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 942
    const/4 v8, 0x1

    .line 943
    const/4 v7, 0x1

    .line 944
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0c0031

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    goto/16 :goto_0

    .line 957
    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #ds:[Landroid/graphics/drawable/Drawable;
    .restart local v3       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 960
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 963
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 966
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 969
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 972
    :cond_c
    const/4 v10, 0x0

    goto :goto_6
.end method

.method private updateIncallIncomingcallState(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "f"
    .parameter "b"
    .parameter "r"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 329
    :try_start_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eq v1, v3, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0

    .line 342
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iget v1, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 344
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 345
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 348
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_0
.end method

.method private updateIncallIncomingcallView(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 13
    .parameter "f"
    .parameter "b"
    .parameter "r"

    .prologue
    .line 353
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    .line 359
    const/4 v11, 0x0

    .line 444
    :goto_0
    return v11

    .line 361
    :catch_0
    move-exception v7

    .line 363
    .local v7, ex:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 377
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_6

    .line 379
    :cond_1
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v12, 0x7f07007f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 381
    .local v1, btn1:Landroid/widget/Button;
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v12, 0x7f070080

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 382
    .local v3, btn2:Landroid/widget/Button;
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v12, 0x7f070081

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 383
    .local v5, btn3:Landroid/widget/Button;
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0c02c9

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, hold:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0c02ca

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, hangup:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0c02cb

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 386
    .local v10, reject:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0c02cc

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, answer:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, btn1Text:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, btn2Text:Ljava/lang/String;
    const/4 v6, 0x0

    .line 389
    .local v6, btn3Text:Ljava/lang/String;
    iget v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_2

    .line 391
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 396
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_3

    iget v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 397
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 399
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->answerIncomingCall()V

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 402
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 404
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_5

    iget v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 405
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getMainCallerName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getMainCallerName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    move-object v6, v10

    .line 408
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 426
    :cond_4
    :goto_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 414
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_4

    iget v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    if-nez v11, :cond_4

    .line 415
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getHoldCallerName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->getMainCallerName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    move-object v6, v10

    .line 418
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_1

    .line 428
    .end local v0           #answer:Ljava/lang/String;
    .end local v1           #btn1:Landroid/widget/Button;
    .end local v2           #btn1Text:Ljava/lang/String;
    .end local v3           #btn2:Landroid/widget/Button;
    .end local v4           #btn2Text:Ljava/lang/String;
    .end local v5           #btn3:Landroid/widget/Button;
    .end local v6           #btn3Text:Ljava/lang/String;
    .end local v8           #hangup:Ljava/lang/String;
    .end local v9           #hold:Ljava/lang/String;
    .end local v10           #reject:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_7

    .line 430
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 432
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 434
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_8

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_8

    .line 435
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 437
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 444
    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 440
    :cond_8
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 442
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/phone/InCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_2
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1063
    :cond_0
    return-void
.end method

.method public doAcceptCallAnimation()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 124
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    return-void
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 1148
    const/4 v0, 0x0

    .line 1151
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1154
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1160
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1162
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 570
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 615
    :pswitch_0
    const-string v8, "InCallTouchUi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick: unexpected click: View "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    return-void

    .line 583
    :pswitch_1
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 587
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 591
    :pswitch_3
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f07008d

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 592
    .local v5, mbuttons:Landroid/view/View;
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f070097

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    .line 593
    .local v4, mB:Landroid/widget/ToggleButton;
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f070063

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 594
    .local v0, dtmf:Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 595
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 596
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 600
    :goto_1
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v6

    .line 601
    .local v6, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-virtual {v6}, Lcom/android/phone/PhoneRecorder;->getFlagRecord()Z

    move-result v3

    .line 602
    .local v3, isRecording:Z
    if-eqz v3, :cond_0

    .line 603
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f07008c

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 604
    .local v7, recordView:Landroid/widget/TextView;
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    .end local v7           #recordView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    sput-boolean v8, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    goto :goto_0

    .line 599
    .end local v3           #isRecording:Z
    .end local v6           #phoneRecorder:Lcom/android/phone/PhoneRecorder;
    :cond_1
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 610
    .end local v0           #dtmf:Landroid/view/View;
    .end local v4           #mB:Landroid/widget/ToggleButton;
    .end local v5           #mbuttons:Landroid/view/View;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x7f070086
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1123
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 175
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 181
    const v6, 0x7f07007d

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/multiwaveview/MultiWaveView;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    .line 182
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v6, p0}, Lcom/baidu/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 186
    const v6, 0x7f070082

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 190
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070090

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    .line 191
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070091

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    .line 193
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07008f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    .line 195
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 200
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070096

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 202
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070095

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 204
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07008e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 206
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v6, 0x7f07007e

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    .line 214
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v7, 0x7f07007f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 217
    .local v0, btn1:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v7, 0x7f070080

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 218
    .local v1, btn2:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v7, 0x7f070081

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 219
    .local v2, btn3:Landroid/widget/Button;
    new-instance v6, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v6, Lcom/android/phone/InCallTouchUi$3;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallTouchUi$3;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v6, Lcom/android/phone/InCallTouchUi$4;

    invoke-direct {v6, p0}, Lcom/android/phone/InCallTouchUi$4;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->allowInCallRecord()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->initializeRecordRes()V

    .line 279
    :cond_0
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070085

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    .line 282
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070089

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 284
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070086

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 288
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070087

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 307
    new-instance v4, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 308
    .local v4, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07008d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 311
    .local v3, more_button:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070097

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    invoke-virtual {v6, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070092

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 316
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1172
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1370
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    .line 1376
    packed-switch p2, :pswitch_data_0

    .line 1394
    const-string v2, "InCallTouchUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v1, 0x0

    .line 1397
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 1403
    .local v0, hintColorResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1405
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_0
    return-void

    .line 1379
    :pswitch_0
    const/4 v1, 0x0

    .line 1380
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1381
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 1376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1418
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1089
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1090
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :goto_0
    return v3

    .line 1094
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1108
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1096
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1102
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1105
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x7f0700d4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1176
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 1200
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1213
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1214
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :goto_0
    return-void

    .line 1218
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1237
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1221
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1222
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->onAnswerInComingCall([Ljava/lang/Object;)V

    goto :goto_1

    .line 1228
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1233
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1079
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 1081
    :cond_0
    return-void
.end method

.method public restoreHoldButton()V
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1594
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 171
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1434
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->resetIncomingCallWidget()V

    .line 1479
    :goto_0
    return-void

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    if-nez v0, :cond_1

    .line 1441
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1448
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1450
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->resetIncomingCallWidget()V

    goto :goto_0

    .line 1456
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->ping()V

    .line 1476
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"

    .prologue
    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 633
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 647
    .local v3, phoneType:I
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 651
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    const/4 v5, 0x0

    .line 656
    .local v5, showExtraButtonRow:Z
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v8, :cond_5

    .line 657
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 659
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :goto_0
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_1

    .line 687
    if-eq v3, v6, :cond_0

    if-ne v3, v9, :cond_a

    .line 694
    :cond_0
    const-string v8, "InCallTouchUi"

    const-string v9, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_1
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 710
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 711
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 714
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 715
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 718
    invoke-direct {p0, v2}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 725
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canHold = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canSwap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", supportsHold"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->supportsHold:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 728
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v8, :cond_b

    .line 729
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 730
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 731
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v2, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 732
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 758
    :goto_1
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v8, :cond_2

    .line 764
    const-string v8, "InCallTouchUi"

    const-string v9, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_2
    if-ne v3, v11, :cond_e

    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_e

    move v4, v6

    .line 772
    .local v4, showCdmaMerge:Z
    :goto_2
    if-eqz v4, :cond_f

    .line 773
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 774
    const/4 v5, 0x1

    .line 778
    :goto_3
    if-ne v3, v11, :cond_4

    .line 779
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_3

    .line 785
    const-string v8, "InCallTouchUi"

    const-string v9, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 789
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 791
    .local v1, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v8, :cond_11

    .line 793
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 795
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v10}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 797
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 803
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->isMergedCallState()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 804
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 832
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4
    :goto_4
    iget-boolean v6, v2, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v6, :cond_13

    .line 843
    :goto_5
    if-eqz v5, :cond_14

    iget-boolean v6, v2, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v6, :cond_14

    .line 844
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 849
    :goto_6
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v6, v2}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V

    .line 850
    return-void

    .line 660
    .end local v4           #showCdmaMerge:Z
    :cond_5
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_9

    .line 661
    if-ne v3, v11, :cond_6

    .line 665
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 666
    :cond_6
    if-eq v3, v6, :cond_7

    if-ne v3, v9, :cond_8

    .line 668
    :cond_7
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 670
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 672
    :cond_8
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 682
    :cond_9
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 684
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 696
    :cond_a
    if-eq v3, v11, :cond_1

    .line 701
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 733
    :cond_b
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v8, :cond_c

    .line 734
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 736
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 748
    :cond_c
    iget-boolean v8, v2, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v8, :cond_d

    .line 749
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 750
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 751
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 752
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 754
    :cond_d
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 755
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_e
    move v4, v7

    .line 770
    goto/16 :goto_2

    .line 776
    .restart local v4       #showCdmaMerge:Z
    :cond_f
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 807
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_10
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 811
    :cond_11
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v8, :cond_12

    .line 813
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 814
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 815
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 816
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 817
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 818
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 820
    :cond_12
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_4

    .line 822
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 824
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v10}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 825
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 826
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 837
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_13
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 846
    :cond_14
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 14
    .parameter "cm"

    .prologue
    .line 451
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v10, :cond_1

    .line 452
    const-string v10, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v10}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    .line 459
    .local v9, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v8, 0x0

    .line 460
    .local v8, showIncomingCallControls:Z
    const/4 v7, 0x0

    .line 462
    .local v7, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 463
    .local v6, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 465
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 466
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 472
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v10

    if-nez v10, :cond_4

    .line 481
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 483
    const/4 v8, 0x1

    .line 490
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 491
    .local v4, now:J
    iget-wide v10, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    cmp-long v10, v4, v10

    if-gez v10, :cond_3

    .line 492
    const-string v10, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v10}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 493
    const/4 v8, 0x0

    .line 506
    .end local v4           #now:J
    :cond_3
    :goto_1
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    .line 507
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 497
    :cond_4
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 498
    const/4 v7, 0x1

    goto :goto_1

    .line 511
    :cond_5
    if-eqz v7, :cond_8

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 514
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 519
    :goto_2
    invoke-direct {p0, v1, v0, v6}, Lcom/android/phone/InCallTouchUi;->updateIncallIncomingcallState(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 520
    if-eqz v8, :cond_9

    .line 522
    invoke-direct {p0, v1, v0, v6}, Lcom/android/phone/InCallTouchUi;->updateIncallIncomingcallView(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 524
    .local v3, isShow:Z
    if-nez v3, :cond_6

    .line 526
    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 536
    :cond_6
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v10, v10, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 554
    .end local v3           #isShow:Z
    :goto_3
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_7

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    .line 561
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_0

    .line 517
    :cond_8
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 539
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 543
    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v10, v10, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_3
.end method
