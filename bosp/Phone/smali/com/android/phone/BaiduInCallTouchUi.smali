.class public Lcom/android/phone/BaiduInCallTouchUi;
.super Lcom/android/phone/InCallTouchUi;
.source "BaiduInCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BaiduInCallTouchUi$SmallerHitTargetTouchListener;
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

.field private static final MOVE_TO_BACK:I = 0x1

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x4b0L

.field private static final SEND_SMS_ID:I = 0x3


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

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncallControlView:Landroid/view/View;

.field private mIncallIncomingcallView:Landroid/view/View;

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/view/View;

.field private mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mRecordContainer:Landroid/widget/TextView;

.field private mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

.field private mSwapButton:Landroid/view/View;

.field mVisualizer:Landroid/media/audiofx/Visualizer;

.field triggered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    iput-boolean v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopupVisible:Z

    .line 129
    new-instance v1, Lcom/android/phone/BaiduInCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BaiduInCallTouchUi$1;-><init>(Lcom/android/phone/BaiduInCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 320
    iput v3, p0, Lcom/android/phone/BaiduInCallTouchUi;->INCALL_INCOMING_ONE_WAY_CALL:I

    .line 321
    iput v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->INCALL_INCOMING_TWO_WAY_CALL:I

    .line 322
    iput v4, p0, Lcom/android/phone/BaiduInCallTouchUi;->INCALL_INCOMING_THREE_WAY_CALL:I

    .line 323
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->INCALL_INCOMING_THRRE_TWO_CHANGING:I

    .line 324
    iput v3, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 1257
    iput-boolean v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->triggered:Z

    .line 1548
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 161
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04000d

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/BaiduInCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/BaiduInCallTouchUi;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/BaiduInCallTouchUi;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/BaiduInCallTouchUi;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mLastIncomingCallActionTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/phone/BaiduInCallTouchUi;)Lcom/baidu/multiwaveview/MultiWaveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BaiduInCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;

    return-object v0
.end method

.method private handleAudioButtonClick()V
    .locals 2

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 942
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->showAudioModePopup()V

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1135
    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->triggered:Z

    .line 1139
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->hideSpectrumView()V

    .line 1141
    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1144
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    :goto_0
    return-void

    .line 1149
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1150
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1151
    new-instance v1, Lcom/android/phone/BaiduInCallTouchUi$5;

    invoke-direct {v1, p0}, Lcom/android/phone/BaiduInCallTouchUi$5;-><init>(Lcom/android/phone/BaiduInCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private initializeRecordRes()V
    .locals 2

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mRecordContainer:Landroid/widget/TextView;

    .line 1532
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mRecordContainer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1533
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mRecordContainer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1534
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1543
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void
.end method

.method private resetIncomingCallWidget()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->reset(Z)V

    .line 1129
    :cond_0
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 957
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 959
    iget-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f0f0001

    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 961
    iget-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 962
    iget-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 966
    iget-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 968
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 975
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f070167

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 976
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 982
    const v7, 0x7f070168

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 983
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f070169

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 984
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 985
    .local v5, usingHeadset:Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 986
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 987
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 988
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 993
    const v7, 0x7f07016a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 994
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 998
    iget-object v7, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 1003
    iput-boolean v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopupVisible:Z

    .line 1004
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 985
    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter "ringingCall"

    .prologue
    const v7, 0x7f06000b

    const v4, 0x7f06000a

    const/16 v6, 0x65

    const/4 v5, 0x0

    .line 1177
    iput-boolean v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->triggered:Z

    .line 1179
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1180
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 1181
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 1182
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 1190
    :cond_0
    invoke-static {p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1191
    .local v0, allowRespondViaSms:Z
    if-eqz v0, :cond_1

    .line 1194
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1195
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1197
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v7}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 1212
    :goto_0
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 1213
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v5}, Lcom/baidu/multiwaveview/MultiWaveView;->reset(Z)V

    .line 1214
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v5}, Lcom/baidu/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 1215
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1228
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1236
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->showSpectrumView()V

    .line 1238
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/phone/BaiduDualCardLogic;->onShowInComingCallWidget([Ljava/lang/Object;)V

    .line 1239
    return-void

    .line 1201
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1202
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1204
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v7}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 12
    .parameter "inCallControlState"

    .prologue
    .line 829
    const/4 v8, 0x0

    .line 832
    .local v8, showToggleStateIndication:Z
    const/4 v6, 0x0

    .line 835
    .local v6, showMoreIndicator:Z
    const/4 v7, 0x0

    .line 836
    .local v7, showSpeakerIcon:Z
    const/4 v5, 0x0

    .line 837
    .local v5, showHandsetIcon:Z
    const/4 v4, 0x0

    .line 838
    .local v4, showBluetoothIcon:Z
    const/4 v9, 0x0

    .line 840
    .local v9, showWiredHeadset:Z
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v10, :cond_5

    .line 843
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 848
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 851
    const/4 v6, 0x1

    .line 852
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v10, :cond_0

    .line 853
    const/4 v4, 0x1

    .line 854
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0b003e

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    .line 906
    :goto_0
    const/4 v0, 0x0

    .line 907
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 909
    .local v1, VISIBLE:I
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 910
    .local v2, ds:[Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x1

    aget-object v3, v2, v10

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 913
    .local v3, layers:Landroid/graphics/drawable/LayerDrawable;
    if-nez v3, :cond_7

    .line 931
    :goto_1
    return-void

    .line 855
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #ds:[Landroid/graphics/drawable/Drawable;
    .end local v3           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v10, :cond_1

    .line 856
    const/4 v7, 0x1

    .line 857
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0b003b

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    goto :goto_0

    .line 860
    :cond_1
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_2

    .line 862
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_3

    const v10, 0x7f0b003d

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/CompoundButton;->setText(I)V

    .line 865
    :cond_2
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 866
    const/4 v9, 0x1

    goto :goto_0

    .line 862
    :cond_3
    const v10, 0x7f0b003c

    goto :goto_2

    .line 868
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 876
    :cond_5
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_6

    .line 879
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 883
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 886
    const/4 v8, 0x1

    .line 887
    const/4 v7, 0x1

    .line 888
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0b003b

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    goto :goto_0

    .line 894
    :cond_6
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 895
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 898
    const/4 v8, 0x1

    .line 899
    const/4 v7, 0x1

    .line 900
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v11, 0x7f0b003b

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setText(I)V

    goto :goto_0

    .line 914
    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #ds:[Landroid/graphics/drawable/Drawable;
    .restart local v3       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_7
    const v10, 0x7f07015e

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v8, :cond_8

    const/16 v10, 0xff

    :goto_3
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 917
    const v10, 0x7f07015f

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v6, :cond_9

    const/16 v10, 0xff

    :goto_4
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 920
    const v10, 0x7f070160

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v4, :cond_a

    const/16 v10, 0xff

    :goto_5
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 923
    const v10, 0x7f070161

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v5, :cond_b

    const/16 v10, 0xff

    :goto_6
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 926
    const v10, 0x7f070162

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v7, :cond_c

    const/16 v10, 0xff

    :goto_7
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 929
    const v10, 0x7f070163

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v9, :cond_d

    const/16 v10, 0xff

    :goto_8
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 914
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 917
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 920
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 923
    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    .line 926
    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .line 929
    :cond_d
    const/4 v10, 0x0

    goto :goto_8
.end method

.method private updateIncallIncomingcallState(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "f"
    .parameter "b"
    .parameter "r"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 328
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

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 338
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0

    .line 341
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iget v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 343
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

    .line 344
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_0

    .line 346
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

    .line 347
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_0
.end method

.method private updateIncallIncomingcallView(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 13
    .parameter "f"
    .parameter "b"
    .parameter "r"

    .prologue
    .line 352
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

    .line 358
    const/4 v11, 0x0

    .line 442
    :goto_0
    return v11

    .line 360
    :catch_0
    move-exception v7

    .line 362
    .local v7, ex:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 375
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

    .line 377
    :cond_1
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v12, 0x7f070064

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 379
    .local v1, btn1:Landroid/widget/Button;
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v12, 0x7f070065

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 380
    .local v3, btn2:Landroid/widget/Button;
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v12, 0x7f070066

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 381
    .local v5, btn3:Landroid/widget/Button;
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0b0432

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, hold:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0b0433

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, hangup:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0b0434

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 384
    .local v10, reject:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v12, 0x7f0b0435

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, answer:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, btn1Text:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, btn2Text:Ljava/lang/String;
    const/4 v6, 0x0

    .line 387
    .local v6, btn3Text:Ljava/lang/String;
    iget v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_2

    .line 389
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 394
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_3

    iget v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 395
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 396
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 397
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->answerIncomingCall()V

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mLastIncomingCallActionTime:J

    .line 400
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 402
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_5

    iget v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 403
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

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

    .line 404
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

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

    .line 405
    move-object v6, v10

    .line 406
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 424
    :cond_4
    :goto_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 412
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_4

    iget v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    if-nez v11, :cond_4

    .line 413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

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

    .line 414
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

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

    .line 415
    move-object v6, v10

    .line 416
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_1

    .line 426
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

    .line 428
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 430
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 432
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_8

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_8

    .line 433
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 435
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    .line 442
    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 438
    :cond_8
    iget-object v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 440
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCurrentIncallIncomingcallState:I

    goto :goto_2
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopupVisible:Z

    .line 1018
    :cond_0
    return-void
.end method

.method public doAcceptCallAnimation()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 125
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 1103
    const/4 v0, 0x0

    .line 1106
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1109
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1115
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1117
    return v0
.end method

.method hideSpectrumView()V
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/SpectrumView;->setVisibility(I)V

    .line 1594
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1596
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/SpectrumView;->hide()V

    .line 1598
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1551
    invoke-super {p0}, Lcom/android/phone/InCallTouchUi;->onAttachedToWindow()V

    .line 1552
    const-string v0, "InCallTouchUi"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_0

    .line 1554
    new-instance v0, Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 1555
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 1556
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

    iget-object v1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/SpectrumView;->setVisualizer(Landroid/media/audiofx/Visualizer;)V

    .line 1558
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 566
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 610
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

    .line 621
    :goto_0
    return-void

    .line 579
    :pswitch_1
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f07007c

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 584
    .local v5, mbuttons:Landroid/view/View;
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f07007e

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    .line 585
    .local v4, mB:Landroid/widget/ToggleButton;
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f07005a

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 586
    .local v0, dtmf:Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 587
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 588
    if-eqz v0, :cond_0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 589
    :cond_0
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 592
    :goto_1
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v6

    .line 593
    .local v6, phoneRecorder:Lcom/android/phone/PhoneRecorder;
    invoke-virtual {v6}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v3

    .line 594
    .local v3, isRecording:Z
    if-eqz v3, :cond_1

    .line 595
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f07007b

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 596
    .local v7, recordView:Landroid/widget/TextView;
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    .end local v7           #recordView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    sput-boolean v8, Lcom/android/phone/BaiduPhoneUtil;->MORE_BTN_CHECKED:Z

    goto :goto_0

    .line 591
    .end local v3           #isRecording:Z
    .end local v6           #phoneRecorder:Lcom/android/phone/PhoneRecorder;
    :cond_2
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 602
    .end local v0           #dtmf:Landroid/view/View;
    .end local v4           #mB:Landroid/widget/ToggleButton;
    .end local v5           #mbuttons:Landroid/view/View;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 607
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x7f070068
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1562
    const-string v0, "InCallTouchUi"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-super {p0}, Lcom/android/phone/InCallTouchUi;->onDetachedFromWindow()V

    .line 1564
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/SpectrumView;->hide()V

    .line 1565
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1567
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 1569
    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->hideSpectrumView()V

    .line 1602
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopupVisible:Z

    .line 1078
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 179
    const v6, 0x7f07005f

    invoke-virtual {p0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;

    .line 180
    const v6, 0x7f070060

    invoke-virtual {p0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/multiwaveview/SpectrumView;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

    .line 183
    const v6, 0x7f070062

    invoke-virtual {p0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/multiwaveview/MultiWaveView;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    .line 184
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v6, p0}, Lcom/baidu/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 189
    const v6, 0x7f070067

    invoke-virtual {p0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 193
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070078

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAddButton:Landroid/view/View;

    .line 194
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070079

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMergeButton:Landroid/view/View;

    .line 196
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070071

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070072

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 200
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070074

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 202
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070073

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 204
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070075

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 206
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070076

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSwapButton:Landroid/view/View;

    .line 208
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f070077

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 211
    const v6, 0x7f070063

    invoke-virtual {p0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    .line 212
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v7, 0x7f070064

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 215
    .local v0, btn1:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v7, 0x7f070065

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 216
    .local v1, btn2:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallIncomingcallView:Landroid/view/View;

    const v7, 0x7f070066

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 217
    .local v2, btn3:Landroid/widget/Button;
    new-instance v6, Lcom/android/phone/BaiduInCallTouchUi$2;

    invoke-direct {v6, p0}, Lcom/android/phone/BaiduInCallTouchUi$2;-><init>(Lcom/android/phone/BaiduInCallTouchUi;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v6, Lcom/android/phone/BaiduInCallTouchUi$3;

    invoke-direct {v6, p0}, Lcom/android/phone/BaiduInCallTouchUi$3;-><init>(Lcom/android/phone/BaiduInCallTouchUi;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v6, Lcom/android/phone/BaiduInCallTouchUi$4;

    invoke-direct {v6, p0}, Lcom/android/phone/BaiduInCallTouchUi$4;-><init>(Lcom/android/phone/BaiduInCallTouchUi;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/phone/BaiduPhoneUtils;->allowInCallRecord(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->initializeRecordRes()V

    .line 279
    :cond_0
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07006a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    .line 282
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07006e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 284
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07006b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 288
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07006c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 307
    new-instance v4, Lcom/android/phone/BaiduInCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v4, p0}, Lcom/android/phone/BaiduInCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/BaiduInCallTouchUi;)V

    .line 308
    .local v4, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07007c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 310
    .local v3, more_button:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07007e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    invoke-virtual {v6, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const v7, 0x7f07007d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 316
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1246
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGrabbedStateChange grabbedState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BaiduInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1325
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_1

    .line 1331
    packed-switch p2, :pswitch_data_0

    .line 1350
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

    .line 1352
    const/4 v1, 0x0

    .line 1353
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 1359
    .local v0, hintColorResId:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1361
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_1
    return-void

    .line 1333
    :pswitch_0
    const/4 v1, 0x0

    .line 1334
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1336
    .restart local v0       #hintColorResId:I
    iget-boolean v2, p0, Lcom/android/phone/BaiduInCallTouchUi;->triggered:Z

    if-nez v2, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->showSpectrumView()V

    goto :goto_0

    .line 1343
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->hideSpectrumView()V

    .line 1345
    const/4 v1, 0x0

    .line 1346
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1347
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1374
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1044
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1045
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

    .line 1068
    :goto_0
    return v3

    .line 1049
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1063
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

    .line 1051
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1057
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1060
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 1049
    :pswitch_data_0
    .packed-switch 0x7f070167
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
    .line 1250
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1262
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->hideIncomingCallWidget()V

    .line 1267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1275
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1276
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

    .line 1312
    :goto_0
    return-void

    .line 1280
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1303
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

    .line 1307
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->hideSpectrumView()V

    .line 1308
    iput-boolean v4, p0, Lcom/android/phone/BaiduInCallTouchUi;->triggered:Z

    .line 1311
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1283
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1284
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->onAnswerInComingCall(Lcom/android/phone/BaiduInCallTouchUi;)V

    goto :goto_1

    .line 1289
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1294
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1298
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1299
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_1

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1034
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->showAudioModePopup()V

    .line 1036
    :cond_0
    return-void
.end method

.method public restoreHoldButton()V
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1538
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 171
    return-void
.end method

.method showSpectrumView()V
    .locals 2

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/SpectrumView;->setVisibility(I)V

    .line 1582
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 1584
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSpectrumView:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/SpectrumView;->show()V

    .line 1587
    :cond_0
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/BaiduInCallTouchUi;->log(Ljava/lang/String;)V

    .line 1390
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->resetIncomingCallWidget()V

    .line 1435
    :goto_0
    return-void

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    if-nez v0, :cond_1

    .line 1397
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mIncallControlView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1406
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->resetIncomingCallWidget()V

    goto :goto_0

    .line 1412
    :cond_2
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMultiWaveView:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->ping()V

    .line 1432
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 628
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 642
    .local v1, phoneType:I
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 646
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    const/4 v3, 0x0

    .line 652
    .local v3, showExtraButtonRow:Z
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_4

    .line 653
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 655
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :goto_0
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_1

    .line 683
    if-eq v1, v2, :cond_0

    if-ne v1, v6, :cond_9

    .line 690
    :cond_0
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_1
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 706
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 707
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 710
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 711
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 714
    invoke-direct {p0, v0}, Lcom/android/phone/BaiduInCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 720
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_a

    .line 721
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 722
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 723
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 724
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :goto_1
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_2

    .line 758
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_2
    if-ne v1, v8, :cond_d

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_d

    .line 766
    .local v2, showCdmaMerge:Z
    :goto_2
    if-eqz v2, :cond_e

    .line 767
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 768
    const/4 v3, 0x1

    .line 772
    :goto_3
    if-ne v1, v8, :cond_3

    .line 773
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_3

    .line 779
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_3
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v5, :cond_f

    .line 797
    :goto_4
    if-eqz v3, :cond_10

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v5, :cond_10

    .line 798
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 803
    :goto_5
    iget-object v4, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4, v0}, Lcom/android/phone/BaiduPhoneUtil;->Story46296_doUpdateInCallControl(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallControlState;)V

    .line 804
    return-void

    .line 656
    .end local v2           #showCdmaMerge:Z
    :cond_4
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_8

    .line 657
    if-ne v1, v8, :cond_5

    .line 661
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 662
    :cond_5
    if-eq v1, v2, :cond_6

    if-ne v1, v6, :cond_7

    .line 664
    :cond_6
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 666
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 668
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 678
    :cond_8
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 680
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 692
    :cond_9
    if-eq v1, v8, :cond_1

    .line 697
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 725
    :cond_a
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_b

    .line 726
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 728
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 740
    :cond_b
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v5, :cond_c

    .line 741
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 742
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 743
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 744
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 747
    :cond_c
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 748
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    move v2, v4

    .line 764
    goto/16 :goto_2

    .line 770
    .restart local v2       #showCdmaMerge:Z
    :cond_e
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 791
    :cond_f
    iget-object v5, p0, Lcom/android/phone/BaiduInCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 800
    :cond_10
    iget-object v4, p0, Lcom/android/phone/BaiduInCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 14
    .parameter "cm"

    .prologue
    .line 449
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v10, :cond_1

    .line 450
    const-string v10, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v10}, Lcom/android/phone/BaiduInCallTouchUi;->log(Ljava/lang/String;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    .line 457
    .local v9, state:Lcom/android/internal/telephony/PhoneConstants$State;
    const/4 v8, 0x0

    .line 458
    .local v8, showIncomingCallControls:Z
    const/4 v7, 0x0

    .line 460
    .local v7, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 461
    .local v6, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 462
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 463
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 469
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v10

    if-nez v10, :cond_4

    .line 478
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 480
    const/4 v8, 0x1

    .line 487
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 488
    .local v4, now:J
    iget-wide v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    cmp-long v10, v4, v10

    if-gez v10, :cond_3

    .line 489
    const-string v10, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v10}, Lcom/android/phone/BaiduInCallTouchUi;->log(Ljava/lang/String;)V

    .line 490
    const/4 v8, 0x0

    .line 504
    .end local v4           #now:J
    :cond_3
    :goto_1
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    .line 505
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 494
    :cond_4
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 495
    const/4 v7, 0x1

    goto :goto_1

    .line 509
    :cond_5
    if-eqz v7, :cond_8

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/phone/BaiduInCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 512
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :goto_2
    invoke-direct {p0, v1, v0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->updateIncallIncomingcallState(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 518
    if-eqz v8, :cond_9

    .line 520
    invoke-direct {p0, v1, v0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->updateIncallIncomingcallView(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 522
    .local v3, isShow:Z
    if-nez v3, :cond_6

    .line 523
    invoke-direct {p0, v6}, Lcom/android/phone/BaiduInCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 532
    :cond_6
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v10, v10, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 550
    .end local v3           #isShow:Z
    :goto_3
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v9, v10, :cond_7

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_0

    .line 557
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/BaiduInCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_0

    .line 515
    :cond_8
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 535
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/BaiduInCallTouchUi;->hideIncomingCallWidget()V

    .line 539
    iget-object v10, p0, Lcom/android/phone/BaiduInCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v10, v10, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_3
.end method
