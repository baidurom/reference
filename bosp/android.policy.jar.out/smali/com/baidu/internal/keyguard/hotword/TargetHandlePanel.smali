.class public Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.super Landroid/widget/RelativeLayout;
.source "TargetHandlePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;,
        Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TargetHandlePanel"


# instance fields
.field private mAxisBottom:Landroid/widget/ImageView;

.field private mAxisLeft:Landroid/widget/ImageView;

.field private mAxisRight:Landroid/widget/ImageView;

.field private mAxisTop:Landroid/widget/ImageView;

.field private mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

.field private mHandleLastX:I

.field private mHandleLastY:I

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mLastHoverTextView:Landroid/widget/TextView;

.field private mMissMessageCountView:Landroid/widget/TextView;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private final mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private final mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private final mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private final mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private final mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private final mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private final mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

.field private mTargetCamera:Landroid/widget/ImageView;

.field private mTargetHandle:Landroid/widget/ImageView;

.field private mTargetMessage:Landroid/widget/ImageView;

.field private mTargetRefresh:Landroid/widget/ImageView;

.field private mTargetRefresh2:Landroid/widget/ImageView;

.field private mTargetRing:Landroid/widget/ImageView;

.field private mTargetUnlock:Landroid/widget/ImageView;

.field private mUnreadCount:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 42
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 42
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 42
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateIdle;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateTouch;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateRefreshHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$StateWordHover;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastX:I

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V

    return-void
.end method

.method static synthetic access$1900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastY:I

    return v0
.end method

.method static synthetic access$2000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    return-object v0
.end method

.method private ringIntersectProcess()V
    .locals 25

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    div-int/lit8 v12, v20, 0x3

    .line 216
    .local v12, r:I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v8, v0, [I

    .line 217
    .local v8, handleXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 218
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 219
    .local v11, messageXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 220
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 221
    .local v6, cameraXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 222
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 223
    .local v18, unlockXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 224
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [I

    .line 225
    .local v15, refreshXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 226
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 227
    .local v16, refreshXY2:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 228
    new-instance v7, Landroid/graphics/Point;

    const/16 v20, 0x0

    aget v20, v8, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    const/16 v21, 0x1

    aget v21, v8, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 230
    .local v7, handlePoint:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v11, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v11, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v11, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v11, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 232
    .local v10, messageRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v6, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v6, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v6, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v6, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .local v5, cameraRect:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v18, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v18, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v18, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 236
    .local v17, unlockRect:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v15, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v15, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v15, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v15, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .local v13, refreshRect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    const/16 v20, 0x0

    aget v20, v16, v20

    sub-int v20, v20, v12

    const/16 v21, 0x1

    aget v21, v16, v21

    sub-int v21, v21, v12

    const/16 v22, 0x0

    aget v22, v16, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    add-int v22, v22, v12

    const/16 v23, 0x1

    aget v23, v16, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    add-int v23, v23, v24

    add-int v23, v23, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    .local v14, refreshRect2:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 242
    .local v9, isWordHover:Z
    if-nez v9, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->onWordHover(Landroid/graphics/Point;)Landroid/widget/TextView;

    move-result-object v19

    .line 244
    .local v19, v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mLastHoverTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    if-eqz v19, :cond_0

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->vibrate()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, #drawable@baidu_keyguard_search_up_pressed#t

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mLastHoverTextView:Landroid/widget/TextView;

    .line 249
    if-eqz v19, :cond_1

    .line 250
    const/4 v9, 0x1

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetWordHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;Ljava/lang/Object;)V

    .line 254
    .end local v19           #v:Landroid/widget/TextView;
    :cond_1
    if-nez v9, :cond_2

    .line 255
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 271
    :cond_2
    :goto_0
    return-void

    .line 257
    :cond_3
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto :goto_0

    .line 259
    :cond_4
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto :goto_0

    .line 261
    :cond_5
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto :goto_0

    .line 264
    :cond_6
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->wordListAvaliable()Z

    move-result v20

    if-nez v20, :cond_7

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetRefreshHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto/16 :goto_0

    .line 268
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    goto/16 :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 616
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/high16 v5, 0x10e

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 145
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 146
    const v0, #id@target_handle#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    .line 147
    const v0, #id@target_message#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    .line 148
    const v0, #id@target_camera#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    .line 149
    const v0, #id@target_refresh#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    .line 150
    const v0, #id@target_refresh2#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    .line 151
    const v0, #id@target_unlock#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    .line 152
    const v0, #id@target_ring#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    .line 153
    const v0, #id@axis_left#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;

    .line 154
    const v0, #id@axis_right#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;

    .line 155
    const v0, #id@axis_top#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;

    .line 156
    const v0, #id@axis_bottom#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;

    .line 157
    const v0, #id@power_percent#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    .line 158
    const v0, #id@miss_message_count#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    .line 160
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mInAnimation:Landroid/view/animation/Animation;

    .line 161
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 163
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #anim@fade_out#t

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mOutAnimation:Landroid/view/animation/Animation;

    .line 164
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43b4

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 168
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 170
    return-void
.end method

.method public onPowerUpdate(II)V
    .locals 3
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 619
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",plugged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-eqz p2, :cond_0

    .line 621
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->setLevel(F)V

    .line 622
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->invalidate()V

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->setLevel(F)V

    .line 625
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mBatteryLevelView:Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/BatteryLevelView;->invalidate()V

    goto :goto_0
.end method

.method public onSmsUnreadUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 109
    iput p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    .line 110
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mUnreadCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mMissMessageCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 175
    .local v1, ea:I
    packed-switch v1, :pswitch_data_0

    .line 211
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 177
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 178
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTouch:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 179
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastX:I

    .line 180
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetHandle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastY:I

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->ringIntersectProcess()V

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->startTargetIntentOrDismissKeyguard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 193
    iget v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastX:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 194
    iget v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastY:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 197
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;

    invoke-direct {v3, p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;-><init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;Landroid/view/View;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TargetHandlePanel"

    const-string v3, "set state to idle fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWordListAvaliable(Z)V
    .locals 3
    .parameter "avaliable"

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 123
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 127
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 128
    return-void
.end method

.method public resetTargetHandlePanelUi()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 131
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetUnlock:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRefresh2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mAxisBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 600
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    if-eq v1, p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 72
    .local v0, oldState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->leave()V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    .line 76
    const-string v1, "TargetHandlePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 78
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->draw()V

    .line 80
    .end local v0           #oldState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->obj:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;Ljava/lang/Object;)V
    .locals 1
    .parameter "state"
    .parameter "obj"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 85
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    iput-object p2, v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->obj:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 603
    if-eqz p1, :cond_1

    .line 604
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public setWordListGallery(Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;)V
    .locals 0
    .parameter "gallery"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    .line 596
    return-void
.end method

.method public startTargetIntentOrDismissKeyguard()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->resetTargetHandlePanelUi()V

    .line 97
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mGallery:Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 99
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mState:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    if-ne v3, v4, :cond_2

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 105
    :goto_1
    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TargetHandlePanel"

    const-string v4, "startActivity fail:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
