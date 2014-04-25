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
.field private static final ACCEPT_CALL_ANIMATION:I = 0x64

.field private static final ANSWER_CALL_ID:I = 0x0

.field private static final DBG:Z = false

.field private static final DECLINE_CALL_ID:I = 0x2

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final ENABLE_PING_ON_RING_EVENTS:Z = false

.field private static final INCOMING_CALL_ACTION_DURATION:I = 0x1f4

.field private static final INCOMING_CALL_WIDGET_PING:I = 0x65

.field private static final IN_CALL_WIDGET_TRANSITION_TIME:I = 0xfa

.field private static final LOG_TAG:Ljava/lang/String; = "InCallTouchUi"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x960L

.field private static final SEND_SMS_ID:I = 0x1


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field protected mHasPermanentMenuKey:Z

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

.field private mIncomingMenuButton:Landroid/widget/ImageButton;

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mSwapButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 124
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 1448
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mHasPermanentMenuKey:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Lcom/baidu/multiwaveview/MultiWaveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 858
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 859
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 864
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->resetIncomingCallWidget()V

    .line 1136
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1137
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1138
    new-instance v1, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1154
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/baidu/multiwaveview/MultiWaveView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1444
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-void
.end method

.method private resetIncomingCallWidget()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->reset(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 877
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 879
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f0f0001

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 881
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 882
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 886
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 888
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 895
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f070167

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 896
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 902
    const v7, 0x7f070168

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 903
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f070169

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 904
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 913
    .local v5, usingHeadset:Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 914
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 916
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 917
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 922
    const v7, 0x7f07016a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 923
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 927
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 932
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 933
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 913
    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "ringingCall"

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    .line 1163
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1164
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 1165
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 1166
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/baidu/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 1174
    :cond_0
    invoke-static {p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 1175
    .local v0, allowRespondViaSms:Z
    if-eqz v0, :cond_2

    .line 1178
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1179
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1181
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 1192
    :goto_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1202
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->reset(Z)V

    .line 1203
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, v4}, Lcom/baidu/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 1215
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1216
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1223
    return-void

    .line 1185
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 1186
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 1188
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    const v3, 0x7f06000b

    invoke-virtual {v2, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_0
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 14
    .parameter "inCallControlState"

    .prologue
    const/4 v12, 0x1

    const v13, 0x7f0b003b

    const/16 v10, 0xff

    const/4 v11, 0x0

    .line 747
    const/4 v7, 0x0

    .line 750
    .local v7, showToggleStateIndication:Z
    const/4 v5, 0x0

    .line 753
    .local v5, showMoreIndicator:Z
    const/4 v6, 0x0

    .line 754
    .local v6, showSpeakerIcon:Z
    const/4 v4, 0x0

    .line 755
    .local v4, showHandsetIcon:Z
    const/4 v3, 0x0

    .line 756
    .local v3, showBluetoothIcon:Z
    const/4 v8, 0x0

    .line 758
    .local v8, showWiredHeadset:Z
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v9, :cond_5

    .line 761
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v12}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 766
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 769
    const/4 v5, 0x1

    .line 770
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v9, :cond_0

    .line 771
    const/4 v3, 0x1

    .line 772
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    const v12, 0x7f0b003e

    invoke-virtual {v9, v12}, Landroid/widget/CompoundButton;->setText(I)V

    .line 823
    :goto_0
    const/4 v0, 0x0

    .line 824
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 826
    .local v1, VISIBLE:I
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 834
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    const v9, 0x7f07015f

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v5, :cond_7

    move v9, v10

    :goto_1
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 837
    const v9, 0x7f070160

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v3, :cond_8

    move v9, v10

    :goto_2
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 840
    const v9, 0x7f070161

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v4, :cond_9

    move v9, v10

    :goto_3
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 843
    const v9, 0x7f070162

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v6, :cond_a

    move v9, v10

    :goto_4
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 846
    const v9, 0x7f070163

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v8, :cond_b

    :goto_5
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 848
    return-void

    .line 773
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v9, :cond_1

    .line 774
    const/4 v6, 0x1

    .line 775
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v13}, Landroid/widget/CompoundButton;->setText(I)V

    goto :goto_0

    .line 778
    :cond_1
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v9, :cond_2

    .line 780
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f0b003d

    :goto_6
    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setText(I)V

    .line 782
    :cond_2
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 783
    const/4 v8, 0x1

    goto :goto_0

    .line 780
    :cond_3
    const v9, 0x7f0b003c

    goto :goto_6

    .line 785
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 793
    :cond_5
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v9, :cond_6

    .line 796
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v12}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 800
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v9, v12}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 803
    const/4 v7, 0x1

    .line 804
    const/4 v6, 0x1

    .line 805
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v13}, Landroid/widget/CompoundButton;->setText(I)V

    goto/16 :goto_0

    .line 811
    :cond_6
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 812
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 815
    const/4 v7, 0x1

    .line 816
    const/4 v6, 0x1

    .line 817
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v13}, Landroid/widget/CompoundButton;->setText(I)V

    goto/16 :goto_0

    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_7
    move v9, v11

    .line 834
    goto/16 :goto_1

    :cond_8
    move v9, v11

    .line 837
    goto/16 :goto_2

    :cond_9
    move v9, v11

    .line 840
    goto :goto_3

    :cond_a
    move v9, v11

    .line 843
    goto :goto_4

    :cond_b
    move v10, v11

    .line 846
    goto :goto_5
.end method


# virtual methods
.method public cancelIncomingCallActionTime()V
    .locals 4

    .prologue
    .line 1438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1439
    return-void
.end method

.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 947
    :cond_0
    return-void
.end method

.method public doAcceptCallAnimation()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 120
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    return-void
.end method

.method public getTouchUiHeight()I
    .locals 4

    .prologue
    const v3, 0x7f0c0017

    .line 1032
    const/4 v0, 0x0

    .line 1035
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1038
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1040
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 1043
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1053
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1055
    return v0

    .line 1045
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 451
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 483
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 467
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 476
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 451
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07006b -> :sswitch_0
        0x7f07006e -> :sswitch_0
        0x7f070071 -> :sswitch_0
        0x7f070072 -> :sswitch_0
        0x7f070073 -> :sswitch_1
        0x7f070074 -> :sswitch_0
        0x7f070075 -> :sswitch_0
        0x7f070076 -> :sswitch_0
        0x7f070078 -> :sswitch_0
        0x7f070079 -> :sswitch_0
        0x7f0700cd -> :sswitch_2
        0x7f0700ce -> :sswitch_2
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1007
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const v6, 0x7f070079

    const v5, 0x7f070078

    const/16 v4, 0x8

    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mHasPermanentMenuKey:Z

    .line 178
    const v2, 0x7f070062

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/multiwaveview/MultiWaveView;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    .line 179
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v2, p0}, Lcom/baidu/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/baidu/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 181
    const v2, 0x7f070067

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 192
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f0700ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    .line 193
    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 195
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 236
    :cond_2
    :goto_0
    const v2, 0x7f0700cd

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    .line 237
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f070071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 243
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f070072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 245
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 247
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 249
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f070075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 251
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 253
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 271
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f07006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    .line 274
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f07006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 276
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f07006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 280
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f07006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 299
    new-instance v1, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 300
    .local v1, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    return-void

    .line 205
    .end local v1           #smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    :cond_3
    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, ProductCharacteristic:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 211
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    .line 213
    if-eqz v0, :cond_6

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 214
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 223
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5

    .line 225
    if-eqz v0, :cond_7

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 226
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 216
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 228
    :cond_7
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 1065
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_0

    .line 1241
    packed-switch p2, :pswitch_data_0

    .line 1259
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

    .line 1261
    const/4 v1, 0x0

    .line 1262
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 1268
    .local v0, hintColorResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1270
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_0
    return-void

    .line 1244
    :pswitch_0
    const/4 v1, 0x0

    .line 1245
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 1246
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 1241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1283
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 973
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 974
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

    .line 997
    :goto_0
    return v3

    .line 978
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 992
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

    .line 980
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 986
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 989
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 978
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
    .line 1069
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v3, 0x0

    .line 1080
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1085
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 1093
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1094
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

    .line 1122
    :goto_0
    return-void

    .line 1098
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1115
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

    .line 1121
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1101
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1106
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1111
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1098
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 963
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 965
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 167
    return-void
.end method

.method touchAnswerCall()V
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 522
    .local v0, ics:Lcom/android/phone/InCallScreen;
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answerVTCall()V

    .line 523
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1299
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->resetIncomingCallWidget()V

    .line 1344
    :goto_0
    return-void

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    if-nez v0, :cond_1

    .line 1306
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1315
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->resetIncomingCallWidget()V

    goto :goto_0

    .line 1321
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->ping()V

    .line 1341
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x960

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

    .line 530
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->updateInCallControlsDuringDMLocked()V

    .line 722
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 548
    .local v1, phoneType:I
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 552
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    const/4 v3, 0x0

    .line 564
    .local v3, showExtraButtonRow:Z
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_2

    .line 565
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_5

    .line 566
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 567
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 568
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 596
    :goto_1
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_2

    .line 597
    if-eq v1, v2, :cond_1

    if-ne v1, v6, :cond_a

    .line 604
    :cond_1
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 626
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 627
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 630
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 631
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 634
    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 640
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_b

    .line 641
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 642
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 643
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 644
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 672
    :goto_2
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v5, :cond_3

    .line 678
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_3
    if-ne v1, v8, :cond_e

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_e

    .line 686
    .local v2, showCdmaMerge:Z
    :goto_3
    if-eqz v2, :cond_f

    .line 687
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 688
    const/4 v3, 0x1

    .line 692
    :goto_4
    if-ne v1, v8, :cond_4

    .line 693
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_4

    .line 699
    const-string v5, "InCallTouchUi"

    const-string v6, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_4
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v5, :cond_10

    .line 707
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 708
    const/4 v3, 0x1

    .line 709
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 717
    :goto_5
    if-eqz v3, :cond_11

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v5, :cond_11

    .line 718
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 569
    .end local v2           #showCdmaMerge:Z
    :cond_5
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v5, :cond_9

    .line 570
    if-ne v1, v8, :cond_6

    .line 575
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 576
    :cond_6
    if-eq v1, v2, :cond_7

    if-ne v1, v6, :cond_8

    .line 578
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 579
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 580
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 582
    :cond_8
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

    .line 592
    :cond_9
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 593
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 594
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 606
    :cond_a
    if-eq v1, v8, :cond_2

    .line 613
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

    .line 645
    :cond_b
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v5, :cond_c

    .line 646
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 647
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 648
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 660
    :cond_c
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v5, :cond_d

    .line 661
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 662
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 663
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 664
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 665
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 667
    :cond_d
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 668
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 669
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    move v2, v4

    .line 684
    goto/16 :goto_3

    .line 690
    .restart local v2       #showCdmaMerge:Z
    :cond_f
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 711
    :cond_10
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 720
    :cond_11
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method updateInCallControlsDuringDMLocked()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 490
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 497
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mHasPermanentMenuKey:Z

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 513
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->canShowSwap:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 516
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->canShowSwap:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 518
    return-void

    :cond_3
    move v1, v3

    .line 513
    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 316
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_1

    .line 317
    const-string v7, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 324
    .local v6, state:Lcom/android/internal/telephony/PhoneConstants$State;
    const/4 v5, 0x0

    .line 325
    .local v5, showIncomingCallControls:Z
    const/4 v4, 0x0

    .line 327
    .local v4, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 328
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 335
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_6

    .line 344
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 346
    const/4 v5, 0x1

    .line 365
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 366
    .local v1, now:J
    iget-wide v7, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-gez v7, :cond_3

    .line 367
    const-string v7, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 368
    const/4 v5, 0x0

    .line 382
    .end local v1           #now:J
    :cond_3
    :goto_2
    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 383
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 354
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 355
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 372
    :cond_6
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 373
    const/4 v4, 0x1

    goto :goto_2

    .line 387
    :cond_7
    if-eqz v4, :cond_9

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 390
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :goto_3
    if-eqz v5, :cond_b

    .line 398
    invoke-direct {p0, v3}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 401
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {p1}, Lcom/android/phone/InCallMenuState;->canIncomingMenuShow(Lcom/android/internal/telephony/CallManager;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 403
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 415
    :goto_4
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v7, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 434
    :goto_5
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_8

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    .line 441
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_0

    .line 393
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 405
    :cond_a
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 418
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 419
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 423
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_5
.end method
