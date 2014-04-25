.class public Lcom/android/phone/VTInCallScreen;
.super Landroid/widget/RelativeLayout;
.source "VTInCallScreen.java"

# interfaces
.implements Lcom/android/phone/IVTInCallScreen;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VTInCallScreen$InCallVideoSettingLocalEffectListener;,
        Lcom/android/phone/VTInCallScreen$DialogCancelTimer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x92

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT2:I = 0x93

.field private static final LOG_TAG:Ljava/lang/String; = "VTInCallScreen"

.field private static final VDBG:Z = true

.field private static final VT_MEDIA_ERROR_VIDEO_FAIL:I = 0x1

.field private static final VT_MEDIA_OCCUPIED:I = 0x1

.field private static final VT_MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final VT_MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field private static final VT_MEDIA_RECORDER_NO_I_FRAME:I = 0x7fff

.field private static final VT_PEER_SNAPSHOT_FAIL:I = 0x7f

.field private static final VT_PEER_SNAPSHOT_OK:I = 0x7e

.field private static final WAITING_TIME_FOR_ASK_VT_SHOW_ME:I = 0x5


# instance fields
.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCallBanner:Lcom/android/phone/CallBanner;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

.field private mHandler:Landroid/os/Handler;

.field private mHighVideoHolder:Landroid/view/SurfaceHolder;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallVideoSettingDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

.field private mLocaleChanged:Z

.field private mLowVideoHolder:Landroid/view/SurfaceHolder;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mVTAudio:Landroid/widget/CompoundButton;

.field private mVTCallBannerController:Lcom/android/phone/CallBannerController;

.field private mVTDialpad:Landroid/widget/CompoundButton;

.field private mVTHangUp:Landroid/widget/ImageButton;

.field private mVTHangUpWrapper:Landroid/widget/LinearLayout;

.field private mVTHighDown:Landroid/widget/ImageButton;

.field private mVTHighUp:Landroid/widget/ImageButton;

.field private mVTHighVideo:Landroid/view/SurfaceView;

.field private mVTInCallCanvas:Landroid/view/ViewGroup;

.field private mVTLowDown:Landroid/widget/ImageButton;

.field private mVTLowUp:Landroid/widget/ImageButton;

.field private mVTLowVideo:Landroid/view/SurfaceView;

.field private mVTMTAsker:Landroid/app/AlertDialog;

.field private mVTMute:Landroid/widget/CompoundButton;

.field private mVTOverflowMenu:Landroid/widget/ImageButton;

.field private mVTPopupMenu:Landroid/widget/PopupMenu;

.field private mVTPowerManager:Landroid/os/PowerManager;

.field mVTRecorderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVTRecorderSelector:Landroid/app/AlertDialog;

.field private mVTScreenMode:Lcom/android/phone/VTCallUtils$VTScreenMode;

.field private mVTSwapVideo:Landroid/widget/CompoundButton;

.field private mVTVoiceReCallDialog:Landroid/app/AlertDialog;

.field private mVTVoiceRecordingIcon:Landroid/widget/ImageView;

.field private mVTWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    sget-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/VTCallUtils$VTScreenMode;

    .line 121
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 122
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 123
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 124
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 125
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 126
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 127
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 129
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 133
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 138
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    .line 147
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreen;->mLocaleChanged:Z

    .line 194
    new-instance v0, Lcom/android/phone/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VTInCallScreen$1;-><init>(Lcom/android/phone/VTInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 153
    const-string v0, "VTInCallScreen constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 164
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    sget-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/VTCallUtils$VTScreenMode;

    .line 121
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 122
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 123
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 124
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 125
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 126
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 127
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 129
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 133
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 138
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    .line 147
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreen;->mLocaleChanged:Z

    .line 194
    new-instance v0, Lcom/android/phone/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VTInCallScreen$1;-><init>(Lcom/android/phone/VTInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 170
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 171
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    sget-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/VTCallUtils$VTScreenMode;

    .line 121
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 122
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 123
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 124
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 125
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 126
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 127
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 129
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 133
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 138
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    .line 147
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreen;->mLocaleChanged:Z

    .line 194
    new-instance v0, Lcom/android/phone/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VTInCallScreen$1;-><init>(Lcom/android/phone/VTInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 190
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 191
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onReceiveVTManagerReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showVTLocalZoom()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showVTLocalBrightness()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showVTLocalContrast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingLocalEffect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingPeerQuality()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateLocalZoomOrBrightness()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/phone/VTInCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/VTInCallScreen;->startRecord(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTHideMeClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTReceiveFirstFrame()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/VTInCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeVTManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1664
    const-string v0, "closeVTManager()!"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->dismissVTDialogs()V

    .line 1666
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 1668
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1670
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;

    const v1, 0x8001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1672
    const-string v0, "VT_VOICE_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VT_VIDEO_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1674
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneRecorderHandler;->isVTRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->stopRecord()V

    .line 1679
    :cond_1
    const-string v0, "- call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1680
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 1681
    const-string v0, "- finish call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1683
    const-string v0, "- set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1684
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 1685
    const-string v0, "- finish set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1687
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->getVTInControlRes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1688
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 1689
    invoke-direct {p0, v3}, Lcom/android/phone/VTInCallScreen;->setVTInControlRes(Z)V

    .line 1691
    :cond_2
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .parameter "anchorView"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 2255
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    .line 2256
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2257
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->setupMenuItems(Landroid/view/Menu;)V

    .line 2260
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private debugVTUIInfo()V
    .locals 2

    .prologue
    .line 2904
    const-string v0, "debugVTUIInfo : output the Visibility info : "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTMute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTAudio - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTDialpad - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTSwapVideo - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTHangUp - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2917
    const-string v0, "debugVTUIInfo : output the enable info : "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTMute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTAudio - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTDialpad - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTSwapVideo - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - debugVTUIInfo : mVTHangUp - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2928
    return-void
.end method

.method private dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2435
    :cond_0
    return-void
.end method

.method private getVTInControlRes()Z
    .locals 1

    .prologue
    .line 1638
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    return v0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 2472
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 2473
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 2474
    const-string v1, "- handleAudioButtonClick: \'popup menu\' mode..."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2475
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showAudioModePopup()V

    .line 2478
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2483
    :goto_0
    return-void

    .line 2480
    :cond_0
    const-string v1, "- handleAudioButtonClick: \'speaker toggle\' mode..."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2481
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideLocalZoomOrBrightness()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 917
    const-string v0, "hideLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 923
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2931
    const-string v0, "VTInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    return-void
.end method

.method private makeVoiceReCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoiceReCall(), number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2030
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2031
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2032
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2033
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2034
    return-void
.end method

.method private okToRecordVoice()Z
    .locals 1

    .prologue
    .line 2250
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoConnected:Z

    return v0
.end method

.method private onReceiveVTManagerReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2751
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 2752
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 2754
    const-string v0, "Incallscreen, before call setting"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2756
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v0, :cond_1

    .line 2757
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableHideYou(I)V

    .line 2762
    :goto_0
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTSettingUtils;->mShowLocalMO:Z

    if-eqz v0, :cond_2

    .line 2763
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->enableHideMe(I)V

    .line 2768
    :goto_1
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2769
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    .line 2775
    :goto_2
    const-string v0, "Incallscreen, after call setting"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2777
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2780
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() start;"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2781
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->unlockPeerVideo()V

    .line 2783
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() end;"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2785
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTIsMT:Z

    if-eqz v0, :cond_0

    .line 2788
    const-string v0, "- VTSettingUtils.getInstance().mShowLocalMT : 1 !"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2790
    const-string v0, "Incallscreen, before enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2791
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableAlwaysAskSettings(I)V

    .line 2792
    const-string v0, "Incallscreen, after enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2794
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0392

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VTInCallScreen$21;

    invoke-direct {v2, p0}, Lcom/android/phone/VTInCallScreen$21;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0394

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VTInCallScreen$20;

    invoke-direct {v2, p0}, Lcom/android/phone/VTInCallScreen$20;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/VTInCallScreen$19;

    invoke-direct {v1, p0}, Lcom/android/phone/VTInCallScreen$19;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 2850
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2852
    new-instance v0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;-><init>(Lcom/android/phone/VTInCallScreen;ILandroid/app/AlertDialog;)V

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->start()V

    .line 2856
    :cond_0
    return-void

    .line 2759
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->enableHideYou(I)V

    goto/16 :goto_0

    .line 2765
    :cond_2
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableHideMe(I)V

    goto/16 :goto_1

    .line 2770
    :cond_3
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2771
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    goto/16 :goto_2

    .line 2773
    :cond_4
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    goto/16 :goto_2
.end method

.method private onVTHideMeClick()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1073
    const-string v2, "onVTHideMeClick()..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1075
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1079
    :cond_0
    invoke-static {}, Lcom/android/phone/VTCallUtils;->checkVTFile()V

    .line 1081
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v2, :cond_1

    .line 1082
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1094
    :goto_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v3, :cond_4

    :goto_2
    iput-boolean v0, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1095
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0

    .line 1084
    :cond_1
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1085
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1086
    :cond_2
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1087
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1089
    :cond_3
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1094
    goto :goto_2
.end method

.method private onVTHideMeClick2()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1102
    const-string v0, "onVTHideMeClick2()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1104
    invoke-static {}, Lcom/android/phone/VTCallUtils;->checkVTFile()V

    .line 1106
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1114
    :goto_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1116
    return-void

    .line 1108
    :cond_0
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0

    .line 1111
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onVTInCallVideoSetting()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const v5, 0x7f060028

    const v4, 0x7f0b0376

    .line 1333
    const-string v2, "onVTInCallVideoSetting() ! "

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1335
    new-instance v1, Lcom/android/phone/VTInCallScreen$5;

    invoke-direct {v1, p0}, Lcom/android/phone/VTInCallScreen$5;-><init>(Lcom/android/phone/VTInCallScreen;)V

    .line 1381
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1382
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0039

    new-instance v3, Lcom/android/phone/VTInCallScreen$6;

    invoke-direct {v3, p0}, Lcom/android/phone/VTInCallScreen$6;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v2, :cond_3

    .line 1392
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_0

    .line 1393
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1417
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1418
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1419
    return-void

    .line 1395
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_1

    .line 1396
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1398
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_2

    .line 1399
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1402
    :cond_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1406
    :cond_3
    const v2, 0x7f060029

    new-instance v3, Lcom/android/phone/VTInCallScreen$7;

    invoke-direct {v3, p0}, Lcom/android/phone/VTInCallScreen$7;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingLocalEffect()V
    .locals 12

    .prologue
    .line 1423
    const-string v10, "onVTInCallVideoSettingLocalEffect() ! "

    invoke-direct {p0, v10}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1424
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v7, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1425
    .local v7, myBuilder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b0039

    new-instance v11, Lcom/android/phone/VTInCallScreen$8;

    invoke-direct {v11, p0}, Lcom/android/phone/VTInCallScreen$8;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v7, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1434
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v9

    .line 1436
    .local v9, supportEntryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060025

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1441
    .local v3, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060024

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1443
    .local v1, entries:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    .local v4, entryValues2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    .local v2, entries2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, i:I
    array-length v6, v3

    .local v6, len:I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 1447
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_2

    .line 1448
    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    aget-object v10, v1, v5

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1454
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onVTInCallVideoSettingLocalEffect() : entryValues2.size() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1456
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1458
    .local v0, currentValue:I
    new-instance v8, Lcom/android/phone/VTInCallScreen$InCallVideoSettingLocalEffectListener;

    invoke-direct {v8, p0}, Lcom/android/phone/VTInCallScreen$InCallVideoSettingLocalEffectListener;-><init>(Lcom/android/phone/VTInCallScreen;)V

    .line 1459
    .local v8, myClickListener:Lcom/android/phone/VTInCallScreen$InCallVideoSettingLocalEffectListener;
    invoke-virtual {v8, v4}, Lcom/android/phone/VTInCallScreen$InCallVideoSettingLocalEffectListener;->setValues(Ljava/util/ArrayList;)V

    .line 1460
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1462
    const v10, 0x7f0b0379

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1463
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1464
    iget-object v10, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private onVTInCallVideoSettingLocalNightMode()V
    .locals 6

    .prologue
    const v5, 0x7f06002a

    const/4 v4, 0x0

    .line 1489
    const-string v2, "onVTInCallVideoSettingLocalNightMode() ! "

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1492
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0039

    new-instance v3, Lcom/android/phone/VTInCallScreen$9;

    invoke-direct {v3, p0}, Lcom/android/phone/VTInCallScreen$9;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1500
    const v2, 0x7f0b037a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1502
    new-instance v1, Lcom/android/phone/VTInCallScreen$10;

    invoke-direct {v1, p0}, Lcom/android/phone/VTInCallScreen$10;-><init>(Lcom/android/phone/VTInCallScreen;)V

    .line 1522
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->isSupportNightMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1524
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1525
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1549
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1550
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1551
    return-void

    .line 1530
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1536
    :cond_1
    const v2, 0x7f06002b

    new-instance v3, Lcom/android/phone/VTInCallScreen$11;

    invoke-direct {v3, p0}, Lcom/android/phone/VTInCallScreen$11;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingPeerQuality()V
    .locals 6

    .prologue
    const v5, 0x7f06002c

    const/4 v4, 0x1

    .line 1555
    const-string v2, "onVTInCallVideoSettingPeerQuality() ! "

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1556
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1557
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0039

    new-instance v3, Lcom/android/phone/VTInCallScreen$12;

    invoke-direct {v3, p0}, Lcom/android/phone/VTInCallScreen$12;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1565
    const v2, 0x7f0b037b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1567
    new-instance v1, Lcom/android/phone/VTInCallScreen$13;

    invoke-direct {v1, p0}, Lcom/android/phone/VTInCallScreen$13;-><init>(Lcom/android/phone/VTInCallScreen;)V

    .line 1585
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 1586
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1596
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1597
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1598
    return-void

    .line 1588
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-nez v2, :cond_1

    .line 1589
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1593
    :cond_1
    const-string v2, "VTManager.getInstance().getVideoQuality() is not VTManager.VT_VQ_SHARP or VTManager.VT_VQ_NORMAL , error ! "

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVTReceiveFirstFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1646
    const-string v0, "onVTReceiveFirstFrame() ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1647
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_2

    .line 1648
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1658
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 1659
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 1660
    :cond_1
    return-void

    .line 1653
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onVTShowDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1299
    const-string v0, "onVTShowDialpad() ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const-string v0, "onShowHideDialpad(): Set mInCallTitle VISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->closeDialer(Z)V

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->openDialer(Z)V

    .line 1307
    return-void
.end method

.method private onVTSwapVideos()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1311
    const-string v0, "onVTSwapVideos() ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1313
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_1

    .line 1316
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1318
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1320
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1321
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1322
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1324
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_2

    .line 1325
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showVTLocalZoom()V

    .line 1326
    :cond_2
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_3

    .line 1327
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showVTLocalBrightness()V

    .line 1328
    :cond_3
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_4

    .line 1329
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showVTLocalContrast()V

    .line 1330
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 1318
    goto :goto_0
.end method

.method private onVTSwitchCameraClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1119
    const-string v0, "onVTSwitchCameraClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1121
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1125
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    if-eqz v0, :cond_1

    .line 1127
    const-string v0, "VTManager is handling switchcamera now, so returns this time."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1133
    :cond_1
    new-instance v0, Lcom/android/phone/VTInCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/VTInCallScreen$4;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen$4;->start()V

    .line 1141
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 1142
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 1144
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1145
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1146
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1147
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1141
    goto :goto_1
.end method

.method private onVTTakePeerPhotoClick()V
    .locals 6

    .prologue
    const v5, 0x7f0b038e

    const/4 v4, 0x0

    .line 1025
    const-string v1, "onVTTakePeerPhotoClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v1

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v1, v2, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTInSnapshot:Z

    if-eqz v1, :cond_1

    .line 1032
    const-string v1, "VTManager is handling snapshot now, so returns this time."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1037
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1042
    :cond_2
    const-wide/32 v1, 0xf4240

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1043
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1053
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v1, Lcom/android/phone/VTInCallScreen$3;

    invoke-direct {v1, p0}, Lcom/android/phone/VTInCallScreen$3;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreen$3;->start()V

    goto :goto_0
.end method

.method private onVoiceVideoRecordClick(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v4, 0x1

    .line 2702
    const-string v1, "onVoiceVideoRecordClick"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2703
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2704
    .local v0, title:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return-void

    .line 2707
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2708
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b034b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2711
    :cond_2
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2712
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2716
    :cond_3
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0b03d1

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2717
    const-string v1, "want to startRecord"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2718
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2719
    const-string v1, "startRecord"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2720
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showStartVTRecorderDialog()V

    goto :goto_0

    .line 2722
    :cond_4
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0b03d2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2723
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->stopRecord()V

    goto :goto_0
.end method

.method private setVTInControlRes(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1642
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 1643
    return-void
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2359
    const-string v7, "showAudioModePopup()..."

    invoke-direct {p0, v7}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2361
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->dismissAudioModePopup()V

    .line 2363
    iget-object v7, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-nez v7, :cond_0

    .line 2364
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2366
    iget-object v7, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f0f0001

    iget-object v11, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2368
    iget-object v7, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2369
    iget-object v7, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2374
    :cond_0
    iget-object v7, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 2376
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 2383
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f070167

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2384
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2390
    const v7, 0x7f070168

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2391
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f070169

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2392
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 2401
    .local v5, usingHeadset:Z
    if-nez v5, :cond_2

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2402
    if-nez v5, :cond_1

    move v9, v8

    :cond_1
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2404
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2405
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2410
    const v7, 0x7f07016a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2411
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2415
    iget-object v7, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 2420
    iput-boolean v8, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2421
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_2
    move v7, v9

    .line 2401
    goto :goto_0
.end method

.method private showReCallDialogEx(ILjava/lang/String;I)V
    .locals 6
    .parameter "resid"
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2052
    const-string v4, "showReCallDialogEx... "

    invoke-direct {p0, v4}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2054
    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 2055
    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2118
    :goto_0
    return-void

    .line 2059
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2066
    .local v3, msg:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/VTInCallScreen$14;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/phone/VTInCallScreen$14;-><init>(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;I)V

    .line 2079
    .local v1, clickListener1:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/phone/VTInCallScreen$15;

    invoke-direct {v2, p0}, Lcom/android/phone/VTInCallScreen$15;-><init>(Lcom/android/phone/VTInCallScreen;)V

    .line 2098
    .local v2, clickListener2:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/VTInCallScreen$16;

    invoke-direct {v0, p0}, Lcom/android/phone/VTInCallScreen$16;-><init>(Lcom/android/phone/VTInCallScreen;)V

    .line 2111
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b03a1

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b03a2

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 2114
    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2115
    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2117
    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showStartVTRecorderDialog()V
    .locals 5

    .prologue
    .line 2634
    const-string v2, "showStartVTRecorderDialog() ..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2635
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2636
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0039

    new-instance v3, Lcom/android/phone/VTInCallScreen$17;

    invoke-direct {v3, p0}, Lcom/android/phone/VTInCallScreen$17;-><init>(Lcom/android/phone/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2645
    const v2, 0x7f0b03c9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2647
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 2648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 2652
    :goto_0
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2654
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2656
    :cond_0
    const-string v2, "VT_VOICE_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2657
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    :cond_1
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2660
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    :cond_2
    new-instance v1, Lcom/android/phone/VTInCallScreen$18;

    invoke-direct {v1, p0}, Lcom/android/phone/VTInCallScreen$18;-><init>(Lcom/android/phone/VTInCallScreen;)V

    .line 2693
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2697
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 2698
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2699
    return-void

    .line 2650
    .end local v1           #myClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 2895
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2896
    return-void
.end method

.method private showVTLocalBrightness()V
    .locals 4

    .prologue
    const v3, 0x7f020230

    const v1, 0x7f02022f

    const/4 v2, 0x0

    .line 858
    const-string v0, "showVTLocalBrightness()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 883
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 865
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 866
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 869
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 879
    :goto_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 880
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 881
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 872
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 873
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 876
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalContrast()V
    .locals 4

    .prologue
    const v3, 0x7f020232

    const v1, 0x7f020231

    const/4 v2, 0x0

    .line 887
    const-string v0, "showVTLocalContrast()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 889
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 912
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 894
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 895
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 908
    :goto_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 909
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 910
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 901
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 902
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 905
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalZoom()V
    .locals 4

    .prologue
    const v3, 0x7f02023b

    const v1, 0x7f02023a

    const/4 v2, 0x0

    .line 829
    const-string v0, "showVTLocalZoom()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 854
    :goto_0
    return-void

    .line 834
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 836
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 837
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 850
    :goto_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 851
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 852
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 843
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 844
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 847
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private startRecord(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    .line 2612
    const-string v2, "startVTRecorder() ..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2613
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getDiskAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    sub-long v0, v2, v4

    .line 2614
    .local v0, sdMaxSize:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2615
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 2616
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/android/phone/PhoneRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneRecorder;->ismFlagRecord()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2617
    const-string v2, "startRecord"

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2619
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/phone/PhoneRecorderHandler;->startVoiceRecord(I)V

    .line 2631
    :cond_0
    :goto_0
    return-void

    .line 2621
    :cond_1
    if-lez p1, :cond_0

    .line 2622
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, v6}, Lcom/android/phone/PhoneRecorderHandler;->startVideoRecord(IJI)V

    .line 2624
    invoke-virtual {p0, v6}, Lcom/android/phone/VTInCallScreen;->updateVideoCallRecordState(I)V

    goto :goto_0

    .line 2626
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 2627
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b038e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 2629
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoRecord()V
    .locals 1

    .prologue
    .line 2595
    const-string v0, "stopVideoRecorder() ..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2596
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneRecorderHandler;->stopVideoRecord()V

    .line 2597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->updateVideoCallRecordState(I)V

    .line 2598
    return-void
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 12
    .parameter "inCallControlState"

    .prologue
    const/4 v11, 0x1

    const/16 v9, 0xff

    const/4 v10, 0x0

    .line 2500
    const-string v8, "updateAudioButton()..."

    invoke-direct {p0, v8}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2508
    const/4 v7, 0x0

    .line 2511
    .local v7, showToggleStateIndication:Z
    const/4 v5, 0x0

    .line 2514
    .local v5, showMoreIndicator:Z
    const/4 v6, 0x0

    .line 2515
    .local v6, showSpeakerIcon:Z
    const/4 v4, 0x0

    .line 2516
    .local v4, showHandsetIcon:Z
    const/4 v3, 0x0

    .line 2518
    .local v3, showBluetoothIcon:Z
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v8, :cond_2

    .line 2519
    const-string v8, "- updateAudioButton: \'popup menu action button\' mode..."

    invoke-direct {p0, v8}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2521
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2526
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2530
    const/4 v5, 0x1

    .line 2531
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v8, :cond_0

    .line 2532
    const/4 v3, 0x1

    .line 2570
    :goto_0
    const/4 v0, 0x0

    .line 2571
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 2573
    .local v1, VISIBLE:I
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 2574
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- \'layers\' drawable: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2581
    const v8, 0x7f07015f

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v5, :cond_4

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2584
    const v8, 0x7f070160

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v3, :cond_5

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2587
    const v8, 0x7f070161

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v4, :cond_6

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2590
    const v8, 0x7f070162

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v6, :cond_7

    :goto_4
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2592
    return-void

    .line 2533
    .end local v0           #HIDDEN:I
    .end local v1           #VISIBLE:I
    .end local v2           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v8, :cond_1

    .line 2534
    const/4 v6, 0x1

    goto :goto_0

    .line 2536
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 2542
    :cond_2
    iget-boolean v8, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v8, :cond_3

    .line 2543
    const-string v8, "- updateAudioButton: \'speaker toggle\' mode..."

    invoke-direct {p0, v8}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2545
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2549
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2552
    const/4 v7, 0x1

    .line 2553
    const/4 v6, 0x1

    goto :goto_0

    .line 2555
    :cond_3
    const-string v8, "- updateAudioButton: disabled..."

    invoke-direct {p0, v8}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2559
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2560
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2563
    const/4 v7, 0x1

    .line 2564
    const/4 v6, 0x1

    goto/16 :goto_0

    .restart local v0       #HIDDEN:I
    .restart local v1       #VISIBLE:I
    .restart local v2       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_4
    move v8, v10

    .line 2581
    goto :goto_1

    :cond_5
    move v8, v10

    .line 2584
    goto :goto_2

    :cond_6
    move v8, v10

    .line 2587
    goto :goto_3

    :cond_7
    move v9, v10

    .line 2590
    goto :goto_4
.end method

.method private updateLocalZoomOrBrightness()V
    .locals 2

    .prologue
    .line 927
    const-string v0, "updateLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 931
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 934
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 935
    :cond_2
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVTInCallButtons()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 463
    const-string v5, "updateVTInCallButtons()..."

    invoke-direct {p0, v5}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isVTIdle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 466
    :cond_0
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 467
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 468
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 469
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 477
    :goto_0
    const-string v5, "updateVTInCallButtons() : update mVTMute \'s src !"

    invoke-direct {p0, v5}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 478
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 480
    const-string v5, "updateVTInCallButtons() : update mVTSwapVideo \'s src !"

    invoke-direct {p0, v5}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 481
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 483
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    .line 485
    .local v1, inCallControlState:Lcom/android/phone/InCallControlState;
    const-string v3, "updateVTInCallButtons() : update mVTDialpad \'s src !"

    invoke-direct {p0, v3}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 487
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 489
    const-string v3, "updateVTInCallButtons() : update mVTAudio \'s src !"

    invoke-direct {p0, v3}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 492
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 493
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 494
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_4

    .line 503
    :cond_1
    :goto_2
    return-void

    .line 471
    .end local v0           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v1           #inCallControlState:Lcom/android/phone/InCallControlState;
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 472
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 473
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 474
    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 481
    goto :goto_1

    .line 501
    .restart local v0       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v1       #inCallControlState:Lcom/android/phone/InCallControlState;
    .restart local v2       #state:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->dismissAudioModePopup()V

    goto :goto_2
.end method

.method private updateVTLocalPeerDisplay()V
    .locals 3

    .prologue
    .line 2887
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 2888
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    .line 2892
    :goto_0
    return-void

    .line 2890
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method private updateVideoBkgDrawable()V
    .locals 3

    .prologue
    const/high16 v1, -0x100

    .line 2227
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v0, :cond_2

    .line 2228
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/android/phone/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2229
    const-string v0, "updatescreen(): replace the peer video"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2230
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v2}, Lcom/android/phone/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2245
    :goto_0
    return-void

    .line 2233
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v2}, Lcom/android/phone/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2236
    :cond_1
    const-string v0, "mBkgBitmapHandler is null or mBkgBitmapHandler.getBitmap() is null"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2239
    :cond_2
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_3

    .line 2240
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 2242
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public NotifyLocaleChange()V
    .locals 2

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBannerController;->setNeedClearUserData(Z)V

    .line 2900
    return-void
.end method

.method public closeVTInCallCanvas()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 764
    const-string v0, "closeVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 768
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->dismissAudioModePopup()V

    .line 769
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 780
    :cond_3
    return-void
.end method

.method public dismissVTDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1602
    const-string v0, "dismissVTDialogs() ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1605
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1609
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1613
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1615
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1616
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1617
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1619
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1620
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1621
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 1623
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 1624
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1625
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1627
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1629
    :cond_5
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 1631
    :cond_6
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1632
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1633
    iput-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 1635
    :cond_7
    return-void
.end method

.method public getVTPicPathDefault()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1207
    const-string v0, "getVTPicPathDefault()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pic_to_replace_local_video_default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVTPicPathUserselect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1200
    const-string v0, "getVTPicPathUserselect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pic_to_replace_local_video_userselect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;
    .locals 2

    .prologue
    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVTScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/VTCallUtils$VTScreenMode;

    return-object v0
.end method

.method public handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menuItem"

    .prologue
    const/4 v0, 0x1

    .line 2268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- handleOnScreenMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2272
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 2273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnScreenMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2309
    :goto_0
    return v0

    .line 2277
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2309
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2279
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTSwitchCameraClick()V

    goto :goto_0

    .line 2282
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTTakePeerPhotoClick()V

    goto :goto_0

    .line 2285
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTHideMeClick()V

    goto :goto_0

    .line 2288
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 2291
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/phone/VTInCallScreen;->onVoiceVideoRecordClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 2294
    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSetting()V

    goto :goto_0

    .line 2297
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2303
    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2306
    :pswitch_9
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2277
    nop

    :pswitch_data_0
    .packed-switch 0x7f070167
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public initCommonVTState()V
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/android/phone/VTBackgroundBitmapHandler;->updateBitmapBySetting()V

    .line 2339
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 2340
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateVideoBkgDrawable()V

    .line 2343
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2344
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2345
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 2346
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2348
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_3

    .line 2349
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2351
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->dismissAudioModePopup()V

    .line 2352
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 2353
    return-void
.end method

.method public initDialingSuccessVTState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2317
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/android/phone/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    .line 2320
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, v2, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 2323
    :cond_1
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTSettingUtils;->mShowLocalMO:Z

    if-nez v0, :cond_2

    .line 2324
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTHideMeClick2()V

    .line 2326
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/VTInCallScreen;->setVTDisplayScreenMode(Z)V

    .line 2327
    return-void
.end method

.method public initDialingVTState()V
    .locals 1

    .prologue
    .line 2330
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->registerForVTPhoneStates()V

    .line 2331
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    invoke-virtual {v0}, Lcom/android/phone/CallBannerController;->clearCallBannerInfo()V

    .line 2332
    return-void
.end method

.method initVTInCallScreen()V
    .locals 11

    .prologue
    const v10, 0x7f070154

    const/16 v9, 0x8

    const/4 v8, 0x1

    const v7, 0x7f070159

    const/4 v6, 0x0

    .line 507
    const-string v3, "initVTInCallCanvas()..."

    invoke-direct {p0, v3}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    .line 510
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    const v4, 0x2000000a

    const-string v5, "VTWakeLock"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 513
    const v3, 0x7f07008a

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallBanner;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mCallBanner:Lcom/android/phone/CallBanner;

    .line 514
    new-instance v3, Lcom/android/phone/CallBannerController;

    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mCallBanner:Lcom/android/phone/CallBanner;

    iget-object v5, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v4, v5}, Lcom/android/phone/CallBannerController;-><init>(Lcom/android/phone/CallBanner;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    .line 516
    const v3, 0x7f07014d

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    .line 517
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 518
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 520
    const v3, 0x7f07014f

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    .line 521
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 522
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 525
    const v3, 0x7f070150

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    .line 526
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 527
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 530
    const v3, 0x7f07015a

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    .line 531
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 532
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 535
    const v3, 0x7f07015b

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    .line 536
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 537
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 540
    const v3, 0x7f07014e

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    .line 541
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 542
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 544
    const v3, 0x7f070152

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    .line 545
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 546
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 548
    invoke-virtual {p0, v10}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    .line 549
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 550
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 553
    const v3, 0x7f070153

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    .line 554
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 555
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, HIDDEN:I
    const/16 v1, 0xff

    .line 562
    .local v1, VISIBLE:I
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 563
    .local v2, layers:Landroid/graphics/drawable/LayerDrawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- \'layers\' drawable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 564
    const v3, 0x7f07015e

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 565
    const v3, 0x7f07015f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 566
    const v3, 0x7f070160

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 567
    const v3, 0x7f070161

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 568
    const v3, 0x7f070162

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 570
    const v3, 0x7f070155

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    .line 571
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 572
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 574
    const v3, 0x7f070156

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    .line 575
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 576
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 578
    const v3, 0x7f070157

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    .line 579
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 580
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 582
    invoke-virtual {p0, v7}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    .line 583
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 584
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 586
    const v3, 0x7f070158

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUpWrapper:Landroid/widget/LinearLayout;

    .line 588
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 597
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 603
    :goto_0
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    const v3, 0x7f070151

    invoke-virtual {p0, v3}, Lcom/android/phone/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    .line 608
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 609
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 610
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    const v4, 0x7f020206

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 611
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v4, 0x7f070153

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 616
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v10}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 617
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v4, 0x7f070153

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 618
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v4, 0x7f070155

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 620
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v4, 0x7f070153

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 621
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v10}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 622
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v10}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 623
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v4, 0x7f070156

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 629
    :goto_1
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v4, 0x7f070155

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 630
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 631
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v4, 0x7f070156

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 635
    :goto_2
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v4, 0x7f070153

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 636
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 638
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v4, 0x7f070155

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 639
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v4, 0x7f070156

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 640
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v10}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 641
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 643
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v4, 0x7f070155

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 644
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v4, 0x7f070157

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 645
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 646
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 648
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 649
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 650
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    const v4, 0x7f070155

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 651
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 654
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    .line 655
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    .line 657
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 658
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 660
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 661
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 663
    new-instance v3, Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-direct {v3}, Lcom/android/phone/VTBackgroundBitmapHandler;-><init>()V

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    .line 665
    new-instance v3, Lcom/android/phone/VTInCallScreen$2;

    invoke-direct {v3, p0}, Lcom/android/phone/VTInCallScreen$2;-><init>(Lcom/android/phone/VTInCallScreen;)V

    iput-object v3, p0, Lcom/android/phone/VTInCallScreen;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 733
    const-string v3, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 734
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 735
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/VTInCallScreen;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 738
    :cond_0
    return-void

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 600
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 626
    :cond_2
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v4, 0x7f070157

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    goto/16 :goto_1

    .line 633
    :cond_3
    iget-object v3, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v4, 0x7f070157

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    goto/16 :goto_2
.end method

.method public internalAnswerVTCallPre()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 943
    const-string v0, "internalAnswerVTCallPre()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->closeVTManager()V

    .line 948
    const-string v0, "internalAnswerVTCallPre: set VTInCallScreenFlags.getInstance().mVTShouldCloseVTManager = false"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 949
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 950
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenFlags;->resetPartial()V

    .line 953
    :cond_0
    const-string v0, "Incallscreen, before incomingVTCall"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->incomingVTCall(I)V

    .line 955
    const-string v0, "Incallscreen, after incomingVTCall"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 957
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenFlags;->reset()V

    .line 958
    invoke-static {}, Lcom/android/phone/VTCallUtils;->checkVTFile()V

    .line 960
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, v3, v3, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 963
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTIsMT:Z

    .line 965
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/VTSettingUtils;->updateVTSettingState()V

    .line 966
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 968
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/android/phone/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    .line 970
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/android/phone/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_2

    .line 972
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateVideoBkgDrawable()V

    .line 975
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    invoke-virtual {v0}, Lcom/android/phone/CallBannerController;->clearCallBannerInfo()V

    .line 977
    invoke-virtual {p0, v2}, Lcom/android/phone/VTInCallScreen;->setVTDisplayScreenMode(Z)V

    .line 978
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 980
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->getVTInControlRes()Z

    move-result v0

    if-nez v0, :cond_3

    .line 981
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 982
    invoke-direct {p0, v3}, Lcom/android/phone/VTInCallScreen;->setVTInControlRes(Z)V

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_4

    .line 986
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 988
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->dismissAudioModePopup()V

    .line 990
    sget-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 991
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 993
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->registerForVTPhoneStates()V

    .line 995
    const-string v0, "- set VTManager open ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 997
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1001
    const-string v0, "- finish set VTManager open ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1003
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1004
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTHideMeClick2()V

    .line 1005
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1007
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 1010
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1013
    :cond_6
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_7

    .line 1015
    const-string v0, "- set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1017
    const-string v0, "- finish set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1021
    :goto_0
    return-void

    .line 1019
    :cond_7
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTSettingReady:Z

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 1727
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1729
    .local v0, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1731
    packed-switch v0, :pswitch_data_0

    .line 1870
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1872
    :cond_0
    :goto_0
    return-void

    .line 1735
    :pswitch_1
    const-string v2, "onClick: VTHighVideo..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1736
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v2, :cond_0

    .line 1737
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1738
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1739
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1740
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1746
    :pswitch_2
    const-string v2, "onClick: VTLowVideo..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1747
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v2, :cond_0

    .line 1748
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1749
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1750
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1751
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1757
    :pswitch_3
    const-string v2, "onClick: VTMute"

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1758
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 1763
    :pswitch_4
    const-string v2, "onClick: VTSpeaker..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1764
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->handleAudioButtonClick()V

    goto :goto_0

    .line 1769
    :pswitch_5
    const-string v2, "onClick: VTDialpad..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1770
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 1775
    :pswitch_6
    const-string v2, "onClick: VTSwapVideo..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1776
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 1781
    :pswitch_7
    const-string v2, "onClick: VTHangUp..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1782
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 1783
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 1784
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 1789
    :pswitch_8
    const-string v2, "onClick: VTLowUp..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1790
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_1

    .line 1791
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 1792
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1793
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1794
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_2

    .line 1795
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 1796
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1797
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1798
    :cond_2
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1799
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 1800
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1801
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1807
    :pswitch_9
    const-string v2, "onClick: VTHighUp..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1808
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_3

    .line 1809
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 1810
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1811
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1812
    :cond_3
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_4

    .line 1813
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 1814
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1815
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1816
    :cond_4
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1817
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 1818
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1819
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1825
    :pswitch_a
    const-string v2, "onClick: VTLowDown..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1826
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_5

    .line 1827
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 1828
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1829
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1830
    :cond_5
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_6

    .line 1831
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 1832
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1833
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1834
    :cond_6
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1835
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 1836
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1837
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1842
    :pswitch_b
    const-string v2, "onClick: VTHighDown..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1843
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_7

    .line 1844
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 1845
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1846
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1847
    :cond_7
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_8

    .line 1848
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 1849
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1850
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1851
    :cond_8
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1852
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 1853
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1854
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1859
    :pswitch_c
    const-string v2, "onClick: VTOverflowMenu..."

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1860
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_9

    .line 1861
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1863
    :cond_9
    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/phone/VTInCallScreen;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 1864
    .local v1, popup:Landroid/widget/PopupMenu;
    if-eqz v1, :cond_0

    .line 1865
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1731
    :pswitch_data_0
    .packed-switch 0x7f07014e
        :pswitch_1
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->unregisterForVTPhoneStates()V

    .line 176
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "onDestroy() : mVTWakeLock.release() unsuccessfully , exception !"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z
    .locals 10
    .parameter "connection"
    .parameter "slotId"
    .parameter "isForeground"

    .prologue
    const v9, 0x7f0b03b2

    const v8, 0x7f0b036d

    const v7, 0x7f0b03b0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1882
    if-nez p1, :cond_1

    .line 2005
    :cond_0
    :goto_0
    return v3

    .line 1885
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1886
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectVT(), cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isForeground = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1887
    if-eqz p3, :cond_12

    .line 1889
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_3

    .line 1892
    :cond_2
    const v5, 0x7f0b0030

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1893
    goto :goto_0

    .line 1894
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_4

    .line 1895
    const v5, 0x7f0b03af

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1896
    goto :goto_0

    .line 1900
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_5

    .line 1901
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1902
    goto :goto_0

    .line 1903
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_6

    .line 1904
    const v5, 0x7f0b03b1

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1905
    goto :goto_0

    .line 1906
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_7

    .line 1907
    invoke-virtual {p0, v9, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1908
    goto :goto_0

    .line 1909
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_8

    .line 1910
    invoke-virtual {p0, v9, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1911
    goto :goto_0

    .line 1912
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_9

    .line 1913
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1914
    goto :goto_0

    .line 1915
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_a

    .line 1916
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1917
    goto/16 :goto_0

    .line 1920
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1922
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1923
    goto/16 :goto_0

    .line 1924
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_c

    .line 1925
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1926
    goto/16 :goto_0

    .line 1927
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_d

    .line 1928
    const v5, 0x7f0b03b3

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1929
    goto/16 :goto_0

    .line 1930
    :cond_d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_e

    .line 1931
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1932
    goto/16 :goto_0

    .line 1933
    :cond_e
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_f

    .line 1934
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1935
    goto/16 :goto_0

    .line 1936
    :cond_f
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_10

    .line 1937
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1938
    goto/16 :goto_0

    .line 1939
    :cond_10
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_11

    .line 1940
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1941
    goto/16 :goto_0

    .line 1942
    :cond_11
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_12

    .line 1943
    invoke-virtual {p0, v7, v3}, Lcom/android/phone/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 1944
    goto/16 :goto_0

    .line 1948
    :cond_12
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/phone/VTSettingUtils;->mAutoDropBack:Z

    if-nez v5, :cond_13

    if-eqz p3, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1949
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1951
    .local v2, number:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_14

    .line 1953
    const-string v3, "InCallScreen"

    const-string v5, "VT call dropback INCOMPATIBLE_DESTINATION"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const v3, 0x7f0b036a

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/phone/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 1955
    goto/16 :goto_0

    .line 1956
    :cond_14
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_15

    .line 1958
    const-string v3, "InCallScreen"

    const-string v5, "VT call dropback RESOURCE_UNAVAILABLE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const v3, 0x7f0b036b

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/phone/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 1960
    goto/16 :goto_0

    .line 1961
    :cond_15
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_16

    .line 1963
    const-string v3, "InCallScreen"

    const-string v5, "VT call dropback BEARER_NOT_AUTHORIZED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-virtual {p0, v8, v2, p2}, Lcom/android/phone/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 1965
    goto/16 :goto_0

    .line 1966
    :cond_16
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_17

    .line 1968
    const-string v3, "InCallScreen"

    const-string v5, "VT call dropback BEARER_NOT_AVAIL"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    invoke-virtual {p0, v8, v2, p2}, Lcom/android/phone/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 1970
    goto/16 :goto_0

    .line 1971
    :cond_17
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_18

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_1a

    .line 1974
    :cond_18
    const-string v5, "InCallScreen"

    const-string v6, "VT call dropback NORMAL or ERROR_UNSPECIFIED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const-string v5, "gsm.cs.network.type"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1993
    .local v1, nCSNetType:I
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VT call dropback nCSNetType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    if-eq v4, v1, :cond_19

    const/4 v5, 0x2

    if-ne v5, v1, :cond_0

    .line 1995
    :cond_19
    const v3, 0x7f0b036e

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/phone/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 1996
    goto/16 :goto_0

    .line 1998
    .end local v1           #nCSNetType:I
    :cond_1a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_0

    .line 2000
    const-string v3, "InCallScreen"

    const-string v5, "VT call dropback NO_CIRCUIT_AVAIL"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-virtual {p0, v8, v2, p2}, Lcom/android/phone/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2002
    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2444
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2264
    invoke-virtual {p0, p1}, Lcom/android/phone/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2313
    invoke-virtual {p0, p1}, Lcom/android/phone/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onReceiveVTManagerStartCounter()V
    .locals 5

    .prologue
    .line 2728
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v1, v1, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 2729
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2730
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2731
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2733
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->triggerTimerStartCount(Lcom/android/internal/telephony/Call;)V

    .line 2735
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2736
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2737
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 2738
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStartDate:J

    .line 2739
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 2741
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 2742
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    if-eqz v1, :cond_1

    .line 2743
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    .line 2748
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 2010
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2012
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 2014
    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {p0, v1}, Lcom/android/phone/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 2015
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 2016
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->resetVTFlags()V

    .line 2019
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 2020
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2022
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->dismissAudioModePopup()V

    .line 2023
    return-void
.end method

.method public openVTInCallCanvas()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 742
    const-string v0, "openVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    const-string v0, "openVTInCallCanvas, the Dialer Opened, return"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 754
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2460
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->showAudioModePopup()V

    .line 2462
    :cond_0
    return-void
.end method

.method registerForVTPhoneStates()V
    .locals 2

    .prologue
    .line 2131
    const-string v0, "- VTManager.getInstance().registerVTListener() start ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2132
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->registerVTListener(Landroid/os/Handler;)V

    .line 2134
    const-string v0, "- VTManager.getInstance().registerVTListener() end ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2136
    return-void
.end method

.method public resetVTFlags()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1177
    const-string v0, "resetVTFlags()..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1179
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenFlags;->reset()V

    .line 1184
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->dismissVTDialogs()V

    .line 1186
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mBkgBitmapHandler:Lcom/android/phone/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/android/phone/VTBackgroundBitmapHandler;->recycle()V

    .line 1196
    :cond_2
    return-void
.end method

.method setDialerProxy(Lcom/android/phone/DTMFTwelveKeyDialerProxy;)V
    .locals 0
    .parameter "dialer"

    .prologue
    .line 2125
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    .line 2126
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2122
    return-void
.end method

.method public setVTDisplayScreenMode(Z)V
    .locals 4
    .parameter "isFullScreenMode"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTDisplayScreenMode(), isFullScreenMode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2860
    if-eqz p1, :cond_0

    .line 2861
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    .line 2862
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCallBanner:Lcom/android/phone/CallBanner;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallBanner;->setVisibility(I)V

    .line 2863
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2864
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUpWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2865
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2866
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2867
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2868
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2869
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 2884
    :goto_0
    return-void

    .line 2871
    :cond_0
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    .line 2872
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCallBanner:Lcom/android/phone/CallBanner;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallBanner;->setVisibility(I)V

    .line 2873
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2874
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUpWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2875
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2876
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2877
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2878
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 2882
    :goto_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2880
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTScreenMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 786
    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    if-ne v1, p1, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->openVTInCallCanvas()V

    .line 790
    const-string v1, "setVTScreenMode : mVTWakeLock.acquire() "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    if-eq v1, p1, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->closeVTInCallCanvas()V

    .line 804
    const-string v1, "setVTScreenMode : mVTWakeLock.release() "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 806
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 813
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/VTCallUtils$VTScreenMode;

    .line 814
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 796
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "setVTScreenMode : mVTWakeLock.acquire() unsuccessfully , exception !"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 810
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "setVTScreenMode : mVTWakeLock.release() unsuccessfully , exception !"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVTVisible(Z)V
    .locals 2
    .parameter "bIsVisible"

    .prologue
    .line 1708
    if-eqz p1, :cond_1

    .line 1709
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_0

    .line 1712
    const-string v0, "VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1715
    const-string v0, "VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1720
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1722
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupMenuItems(Landroid/view/Menu;)V
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2175
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2224
    :goto_0
    return-void

    .line 2179
    :cond_0
    const v8, 0x7f07016e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2180
    .local v4, switchCameraMenu:Landroid/view/MenuItem;
    const v8, 0x7f07016f

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2181
    .local v5, takePeerPhotoMenu:Landroid/view/MenuItem;
    const v8, 0x7f070171

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2182
    .local v2, hideLocalVideoMenu:Landroid/view/MenuItem;
    const v8, 0x7f070170

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2183
    .local v3, swapVideosMenu:Landroid/view/MenuItem;
    const v8, 0x7f070172

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2185
    .local v7, voiceRecordMenu:Landroid/view/MenuItem;
    const v8, 0x7f070173

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2187
    .local v6, videoSettingMenu:Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2188
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/vt/VTManager;->getCameraSensorCount()I

    move-result v1

    .line 2190
    .local v1, cameraSensorCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupMenuItems() : VTManager.getInstance().getCameraSensorCount() == "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2192
    const/4 v8, 0x2

    if-ne v8, v1, :cond_2

    move v8, v9

    :goto_1
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2193
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/VTSettingUtils;->mEnableBackCamera:Z

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_3

    move v0, v9

    .line 2195
    .local v0, bIsSwitchCameraEnable:Z
    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2197
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2198
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->isDialerOpened()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoConnected:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_3
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2201
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2202
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_5

    .line 2203
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0b039d

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2208
    :goto_4
    iget-object v8, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v9

    :goto_5
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2209
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2211
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2212
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2213
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->okToRecordVoice()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2214
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2215
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneRecorderHandler;->isVTRecording()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2216
    const v8, 0x7f0b03d2

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2222
    :cond_1
    :goto_6
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2223
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoConnected:Z

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v0           #bIsSwitchCameraEnable:Z
    :cond_2
    move v8, v10

    .line 2192
    goto/16 :goto_1

    :cond_3
    move v0, v10

    .line 2193
    goto :goto_2

    .restart local v0       #bIsSwitchCameraEnable:Z
    :cond_4
    move v8, v10

    .line 2198
    goto :goto_3

    .line 2205
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0b039e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v8, v10

    .line 2208
    goto :goto_5

    .line 2218
    :cond_7
    const v8, 0x7f0b03d1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method protected showGenericErrorDialog(IZ)V
    .locals 1
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 1876
    return-void
.end method

.method public showReCallDialog(ILjava/lang/String;I)V
    .locals 3
    .parameter "resid"
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2039
    const-string v0, "showReCallDialog... "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2041
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTSettingUtils;->mAutoDropBack:Z

    if-eqz v0, :cond_0

    .line 2042
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2044
    invoke-direct {p0, p2, p3}, Lcom/android/phone/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    .line 2048
    :goto_0
    return-void

    .line 2046
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/VTInCallScreen;->showReCallDialogEx(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 2601
    const-string v0, "stopRecord"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2602
    invoke-static {}, Lcom/android/phone/PhoneRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2603
    const-string v0, "stopVoiceRecord"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2604
    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneRecorderHandler;->stopVoiceRecord()V

    .line 2609
    :cond_0
    :goto_0
    return-void

    .line 2605
    :cond_1
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/phone/PhoneRecorderHandler;->getInstance()Lcom/android/phone/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2606
    const-string v0, "stopVideoRecord"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2607
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->stopVideoRecord()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " surfaceChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1217
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v1, :cond_0

    .line 1219
    const-string v1, " surfaceChanged : HighVideo , set mVTSurfaceChangedH = true "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1223
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v1, :cond_1

    .line 1225
    const-string v1, " surfaceChanged : LowVideo , set mVTSurfaceChangedL = true "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1226
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1229
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v1, :cond_4

    .line 1231
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1234
    const-string v1, "surfaceChanged : VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1235
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1238
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_2
    :goto_0
    const-string v1, "surfaceChanged : VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSettingReady:Z

    if-eqz v1, :cond_3

    .line 1248
    const-string v1, "- set VTManager ready ! "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1251
    const-string v1, "- finish set VTManager ready ! "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1252
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 1254
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    .line 1257
    :cond_4
    return-void

    .line 1239
    :catch_0
    move-exception v0

    .line 1241
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "surfaceChanged : mVTWakeLock.acquire() unsuccessfully , exception !"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " surfaceDestroyed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1268
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v1, :cond_0

    .line 1270
    const-string v1, " surfaceDestroyed : HighVideo , set mVTSurfaceChangedH = false "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1271
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v1, :cond_1

    .line 1276
    const-string v1, " surfaceDestroyed : LowVideo , set mVTSurfaceChangedL = false "

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1277
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1280
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-nez v1, :cond_3

    .line 1283
    const-string v1, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1284
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1286
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1287
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :cond_2
    :goto_0
    const-string v1, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) end ..."

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1295
    :cond_3
    return-void

    .line 1288
    :catch_0
    move-exception v0

    .line 1290
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "surfaceDestroyed : mVTWakeLock.release() unsuccessfully , exception !"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method unregisterForVTPhoneStates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2146
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->getmVTListener()Landroid/os/Handler;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2148
    const-string v0, "- mHandler does not equal to VTManager.getInstance().getmVTListener(), just return"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2158
    :goto_0
    return-void

    .line 2151
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    .line 2153
    const-string v0, "- VTManager.getInstance().unregisterVTListener() start ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2154
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->unregisterVTListener()V

    .line 2156
    const-string v0, "- VTManager.getInstance().unregisterVTListener() end ! "

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateElapsedTime(J)V
    .locals 4
    .parameter "elapsedTime"

    .prologue
    .line 2161
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2162
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/android/phone/VTCallUtils$VTTimingMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/android/phone/VTCallUtils$VTTimingMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2164
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CallBannerController;->updateElapsedTimeWidget(J)V

    .line 2168
    :goto_0
    return-void

    .line 2166
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/CallBannerController;->updateElapsedTimeWidget(J)V

    goto :goto_0
.end method

.method public updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    if-eq p1, v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 415
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    .line 422
    :goto_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateCallTime()V

    .line 425
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTInCallScreenFlags.getInstance().mVTHideMeNow - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTSettingUtils.getInstance().mEnableBackCamera - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTSettingUtils;->mEnableBackCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 437
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 438
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 439
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 442
    :cond_1
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v0, :cond_2

    .line 443
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 444
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 445
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 446
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 449
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->updateVTInCallButtons()V

    .line 451
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 456
    invoke-direct {p0}, Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 459
    :cond_3
    const-string v0, "updateVTScreen end"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_5

    .line 417
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTCallBannerController:Lcom/android/phone/CallBannerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1
.end method

.method public updateVideoCallRecordState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoCallRecordState(), state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1698
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1699
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    if-nez p1, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
