.class public Lcom/yi/internal/widget/VoiceprintUnlockView;
.super Landroid/widget/RelativeLayout;
.source "VoiceprintUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yi/internal/widget/LockScreenVoicePrintInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$Exiting;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingError;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$Start;,
        Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    }
.end annotation


# static fields
.field static final BAR_DROPOFF_STEP:I = 0x1

.field public static final CMD:Ljava/lang/String; = "command"

.field public static final CMDBAIDUPAUSE:Ljava/lang/String; = "baidupause"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "baidutogglepause"

.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:I = 0x7d0

.field public static final FROM_APP:Ljava/lang/String; = "from_app"

.field public static final MY_NAME:Ljava/lang/String; = "VoiceprintUnlock"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final START_BGVIEW_UPDATE_INTERVAL:I = 0x190

.field private static final TAG:Ljava/lang/String; = "VoiceprintUnlock"

.field private static final VOICE_RETRY_MAX_TIMES:I = 0x2

.field private static mAttached:Z

.field private static mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mExiting:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mNextStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mRecognizing:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mRecognizingError:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mRecognizingSuccess:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mRecording:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mRetryTime:I

.field private static mStart:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

.field private static mTestResult:I

.field private static mTone:Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

.field private static mUiHandler:Landroid/os/Handler;

.field private static mUnlockStartTime:J

.field private static mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

.field private static mVoiceLooper:Landroid/os/Looper;

.field private static mVoiceTransactionInit:Z

.field private static mVoiceprintHandler:Lcom/baidu/voiceprint/VoiceprintHandler;

.field private static mVoiceprintUnlockInit:Z

.field private static transelateAnimator:Landroid/animation/AnimatorSet;

.field private static transelateUpAnimator:Landroid/animation/AnimatorSet;


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mCurrentBar:I

.field private mMicImage:Landroid/widget/ImageView;

.field private mNextStatusTask:Ljava/lang/Runnable;

.field private mRecoResultImage:Landroid/widget/ImageView;

.field private mTipImage:Landroid/widget/ImageView;

.field private mTipWords:Landroid/widget/TextView;

.field private mUpdateRecordingViewTask:Ljava/lang/Runnable;

.field private mVoiceLockScreen:Landroid/widget/RelativeLayout;

.field private mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRetryTime:I

    .line 62
    sput v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTestResult:I

    .line 63
    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceTransactionInit:Z

    .line 74
    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    .line 76
    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAttached:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$1;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$1;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$2;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;

    .line 493
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$6;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$6;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 163
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 165
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->initLayout(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$1;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$1;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$2;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;

    .line 493
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$6;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$6;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 171
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    .line 172
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 173
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->initLayout(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$1;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$1;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$2;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;

    .line 493
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$6;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$6;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 179
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    .line 180
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 181
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->initLayout(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method static synthetic access$000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object p0
.end method

.method static synthetic access$100()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;)Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yi/internal/widget/VoiceprintUnlockView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->updateTipWords(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->pauseAudioPlayback()V

    return-void
.end method

.method static synthetic access$1600()Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTone:Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRetryTime:I

    return v0
.end method

.method static synthetic access$1708()I
    .locals 2

    .prologue
    .line 43
    sget v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRetryTime:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRetryTime:I

    return v0
.end method

.method static synthetic access$1800(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->sendUBCForUnlockFail()V

    return-void
.end method

.method static synthetic access$1900()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$200()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecording:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mStart:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->delaySetNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V

    return-void
.end method

.method static synthetic access$2200()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mExiting:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->sendUBCForUnlockSuccess()V

    return-void
.end method

.method static synthetic access$2500(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->exiting()V

    return-void
.end method

.method static synthetic access$2600()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizingError:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceTransactionInit:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceTransactionInit:Z

    return p0
.end method

.method static synthetic access$2900()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizing:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTestResult:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTestResult:I

    return p0
.end method

.method static synthetic access$3100()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizingSuccess:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    return-object v0
.end method

.method static synthetic access$400()Lcom/baidu/voiceprint/VoiceprintHandler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintHandler:Lcom/baidu/voiceprint/VoiceprintHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yi/internal/widget/VoiceprintUnlockView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/yi/internal/widget/VoiceprintUnlockView;)Lcom/yi/internal/widget/LockScreenVoicePrintCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$902(Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceLooper:Landroid/os/Looper;

    return-object p0
.end method

.method private delaySetNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;I)V
    .locals 4
    .parameter "nextStatus"
    .parameter "delay"

    .prologue
    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 533
    monitor-exit p0

    .line 539
    :goto_0
    return-void

    .line 535
    :cond_0
    sput-object p1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 536
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dip2px(I)I
    .locals 4
    .parameter "dip"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private endVoiceTransaction()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 812
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    if-eqz v0, :cond_0

    .line 813
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 814
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 815
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 816
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 817
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    invoke-virtual {v0, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 818
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    invoke-virtual {v0, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->sendEmptyMessage(I)Z

    .line 820
    :cond_0
    return-void
.end method

.method private exiting()V
    .locals 2

    .prologue
    .line 744
    const-string v0, "VoiceprintUnlock"

    const-string v1, "exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->finiVoiceprint()V

    .line 747
    sget v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTestResult:I

    packed-switch v0, :pswitch_data_0

    .line 763
    :goto_0
    return-void

    .line 749
    :pswitch_0
    const-string v0, "VoiceprintUnlock"

    const-string v1, "VoiceprintHandler.REJECT: call cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    invoke-interface {v0}, Lcom/yi/internal/widget/LockScreenVoicePrintCallback;->cancel()V

    .line 751
    const-string v0, "VoiceprintUnlock"

    const-string v1, "VoiceprintHandler.REJECT: cancel() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :pswitch_1
    const-string v0, "VoiceprintUnlock"

    const-string v1, "VoiceprintHandler.PRIVATE: call unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    invoke-interface {v0}, Lcom/yi/internal/widget/LockScreenVoicePrintCallback;->unlock()V

    .line 758
    const-string v0, "VoiceprintUnlock"

    const-string v1, "VoiceprintHandler.PRIVATE: unlock() unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private finiAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 282
    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    .line 284
    :cond_0
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 286
    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 292
    :cond_2
    return-void
.end method

.method private finiVoiceprint()V
    .locals 3

    .prologue
    .line 337
    const-string v0, "VoiceprintUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finiVoiceprint begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    sget-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    if-nez v0, :cond_0

    .line 340
    monitor-exit p0

    .line 360
    :goto_0
    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTone:Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    if-eqz v0, :cond_1

    .line 342
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTone:Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->release()V

    .line 343
    const/4 v0, 0x0

    sput-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTone:Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    .line 346
    :cond_1
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->endVoiceTransaction()V

    .line 347
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 349
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    const/4 v0, 0x0

    sput-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    .line 353
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceTransactionInit:Z

    .line 354
    const/4 v0, 0x0

    sput v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRetryTime:I

    .line 355
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->finiAnimator()V

    .line 356
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    .line 357
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->restoreAudioPlayback()V

    .line 358
    const-string v0, "VoiceprintUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finiVoiceprint end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initAnimator()V
    .locals 12

    .prologue
    const/16 v11, 0x140

    const/16 v10, 0xa0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 206
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;

    const-string v4, "y"

    new-array v5, v7, [F

    invoke-direct {p0, v10}, Lcom/yi/internal/widget/VoiceprintUnlockView;->dip2px(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 207
    .local v0, widthAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 209
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateAnimator:Landroid/animation/AnimatorSet;

    .line 211
    sget-object v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 213
    sget-object v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/yi/internal/widget/VoiceprintUnlockView$3;

    invoke-direct {v4, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$3;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;

    const-string v4, "y"

    new-array v5, v7, [F

    invoke-direct {p0, v10}, Lcom/yi/internal/widget/VoiceprintUnlockView;->dip2px(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-direct {p0, v11}, Lcom/yi/internal/widget/VoiceprintUnlockView;->dip2px(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 241
    .local v1, widthAnim2:Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;

    const-string v4, "y"

    new-array v5, v7, [F

    invoke-direct {p0, v11}, Lcom/yi/internal/widget/VoiceprintUnlockView;->dip2px(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v8

    const/16 v6, 0x1e0

    invoke-direct {p0, v6}, Lcom/yi/internal/widget/VoiceprintUnlockView;->dip2px(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 245
    .local v2, widthAnim3:Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 246
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    .line 249
    sget-object v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 250
    sget-object v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const-wide/16 v4, 0x640

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 251
    sget-object v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->transelateUpAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/yi/internal/widget/VoiceprintUnlockView$4;

    invoke-direct {v4, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$4;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 187
    const-string v1, "VoiceprintUnlock"

    const-string v2, "initLayout: voiceprint unlock "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;

    invoke-direct {v1, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$Start;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mStart:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 189
    new-instance v1, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;

    invoke-direct {v1, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$Recording;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecording:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 190
    new-instance v1, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingError;

    invoke-direct {v1, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingError;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizingError:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 191
    new-instance v1, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;

    invoke-direct {v1, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$RecognizingSuccess;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizingSuccess:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 192
    new-instance v1, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;

    invoke-direct {v1, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$Recognizing;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizing:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 193
    new-instance v1, Lcom/yi/internal/widget/VoiceprintUnlockView$Exiting;

    invoke-direct {v1, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$Exiting;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    sput-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mExiting:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 195
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 196
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x509003b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 197
    const v1, 0x5020054

    invoke-virtual {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceLockScreen:Landroid/widget/RelativeLayout;

    .line 198
    const v1, 0x502005f

    invoke-virtual {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipWords:Landroid/widget/TextView;

    .line 199
    const v1, 0x502005e

    invoke-virtual {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;

    .line 200
    const v1, 0x502005d

    invoke-virtual {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;

    .line 201
    const v1, 0x502005b

    invoke-virtual {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecoResultImage:Landroid/widget/ImageView;

    .line 202
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private initVoiceprint()V
    .locals 3

    .prologue
    .line 294
    const-string v0, "VoiceprintUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVoiceprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mStart:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-direct {p0, v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    .line 297
    sget-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    if-eqz v0, :cond_0

    .line 298
    monitor-exit p0

    .line 334
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->initAnimator()V

    .line 300
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    if-nez v0, :cond_2

    .line 301
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$5;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$5;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView$5;->start()V

    .line 310
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 320
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    .line 324
    invoke-static {}, Lcom/baidu/voiceprint/VoiceprintHandler;->getRecorder()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v0

    sput-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintHandler:Lcom/baidu/voiceprint/VoiceprintHandler;

    .line 325
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintHandler:Lcom/baidu/voiceprint/VoiceprintHandler;

    new-instance v1, Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView$RecorderListener;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/voiceprint/VoiceprintHandler;->setStateListener(Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;)Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;

    .line 327
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTone:Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    sput-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTone:Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;

    .line 329
    :cond_1
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mStart:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-direct {p0, v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    .line 330
    const/4 v0, 0x0

    sput v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTestResult:I

    .line 331
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUnlockStartTime:J

    .line 333
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 312
    :cond_2
    :try_start_1
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 313
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 314
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 315
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V

    .line 316
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private pauseAudioPlayback()V
    .locals 6

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "baidupause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v2, "from_app"

    const-string v3, "VoiceprintUnlock"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v1, i2:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v2, "from_app"

    const-string v3, "VoiceprintUnlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 478
    return-void
.end method

.method private restoreAudioPlayback()V
    .locals 3

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "baidutogglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, "from_app"

    const-string v2, "VoiceprintUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 491
    :cond_1
    return-void
.end method

.method private sendUBCForUnlockDuration()V
    .locals 10

    .prologue
    .line 955
    const-wide/16 v2, 0x512

    .line 956
    .local v2, metricCountId:J
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 957
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v6, 0x512

    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 959
    .local v4, timestamp:J
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 960
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 961
    sget-wide v6, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUnlockStartTime:J

    sub-long v6, v4, v6

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 962
    const-string v6, "VoiceprintUnlock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendUBCForUnlockDuration(ms): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUnlockStartTime:J

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v1, Landroid/content/Intent;

    const-string v6, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 964
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 965
    const-string v6, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 966
    iget-object v6, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 967
    const-string v6, "VoiceprintUnlock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendUBCForUnlockDuration(ms): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private sendUBCForUnlockFail()V
    .locals 9

    .prologue
    .line 985
    const-wide/16 v2, 0x511

    .line 986
    .local v2, metricCountId:J
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 987
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v6, 0x511

    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 989
    .local v4, timestamp:J
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 990
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 991
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 993
    new-instance v1, Landroid/content/Intent;

    const-string v6, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 995
    const-string v6, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 996
    iget-object v6, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 997
    return-void
.end method

.method private sendUBCForUnlockSuccess()V
    .locals 9

    .prologue
    .line 970
    const-wide/16 v2, 0x511

    .line 971
    .local v2, metricCountId:J
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 972
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v6, 0x511

    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 974
    .local v4, timestamp:J
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 975
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 976
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 978
    new-instance v1, Landroid/content/Intent;

    const-string v6, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 980
    const-string v6, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 981
    iget-object v6, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 982
    const-string v6, "VoiceprintUnlock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendUBCForUnlockSuccess(+1):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return-void
.end method

.method private setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V
    .locals 2
    .parameter "nextStatus"

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    :try_start_0
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 519
    monitor-exit p0

    .line 525
    :goto_0
    return-void

    .line 521
    :cond_0
    sput-object p1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    .line 522
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mNextStatusTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateTipWords(I)V
    .locals 3
    .parameter "tipId"

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, tip:Ljava/lang/String;
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipWords:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipWords:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "id"

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 767
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 366
    sget-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAttached:Z

    if-nez v0, :cond_0

    .line 368
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAttached:Z

    .line 369
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 381
    const/4 v0, -0x1

    .line 383
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    invoke-interface {v1}, Lcom/yi/internal/widget/LockScreenVoicePrintCallback;->pokeWakelock()V

    .line 384
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mMicImage:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6

    :cond_0
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    if-eqz v1, :cond_6

    .line 385
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yi/internal/widget/VoiceprintUnlockView;->mStart:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecording:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-direct {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 388
    :cond_2
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecording:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintHandler:Lcom/baidu/voiceprint/VoiceprintHandler;

    invoke-virtual {v1}, Lcom/baidu/voiceprint/VoiceprintHandler;->stopRecording()V

    .line 391
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceHandler:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 392
    :cond_3
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yi/internal/widget/VoiceprintUnlockView;->mExiting:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    invoke-interface {v1}, Lcom/yi/internal/widget/LockScreenVoicePrintCallback;->cancel()V

    goto :goto_0

    .line 394
    :cond_4
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizingError:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    sget v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRetryTime:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 396
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecording:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-direct {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    goto :goto_0

    .line 398
    :cond_5
    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mExiting:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-direct {p0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    goto :goto_0

    .line 402
    :cond_6
    const-string v1, "VoiceprintUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 374
    sget-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 376
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mAttached:Z

    .line 377
    return-void
.end method

.method public providesKeyboard()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/yi/internal/widget/LockScreenVoicePrintCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    .line 451
    return-void
.end method

.method public setVoiceprintState(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->initVoiceprint()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->finiVoiceprint()V

    goto :goto_0
.end method

.method public setVoiceprintUnlockViewGone()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "VoiceprintUnlock"

    const-string v1, "Enter setVoiceprintUnlockViewGone "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-boolean v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintUnlockInit:Z

    if-nez v0, :cond_1

    .line 432
    const-string v0, "VoiceprintUnlock"

    const-string v1, "mVoiceprintUnlockInit not yet "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecording:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentStatus:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    sget-object v1, Lcom/yi/internal/widget/VoiceprintUnlockView;->mRecognizingError:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    if-ne v0, v1, :cond_0

    .line 437
    :cond_2
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mVoiceprintHandler:Lcom/baidu/voiceprint/VoiceprintHandler;

    invoke-virtual {v0}, Lcom/baidu/voiceprint/VoiceprintHandler;->stopRecording()V

    .line 439
    sget-object v0, Lcom/yi/internal/widget/VoiceprintUnlockView;->mStart:Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    invoke-direct {p0, v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setNextStatus(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;)V

    goto :goto_0
.end method
