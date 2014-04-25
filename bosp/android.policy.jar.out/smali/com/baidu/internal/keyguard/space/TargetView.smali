.class public Lcom/baidu/internal/keyguard/space/TargetView;
.super Landroid/widget/RelativeLayout;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;,
        Lcom/baidu/internal/keyguard/space/TargetView$State;,
        Lcom/baidu/internal/keyguard/space/TargetView$IconState;,
        Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;,
        Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TargetHandlePanel"

.field public static mFixPointRatio:F

.field public static mStartTime:J


# instance fields
.field private final COLOR_CRITICAL:I

.field private final COLOR_LOW:I

.field private final COLOR_NORMAL:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCruiseDuration:J

.field private mDX:F

.field private mDY:F

.field private mHandleLastX:I

.field private mHandleLastY:I

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mLevel:F

.field private mMissCallCount:I

.field private mMissCallCountView:Landroid/widget/TextView;

.field private mMissMsgCount:I

.field private mMissMsgCountView:Landroid/widget/TextView;

.field private mOffsetR:I

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

.field private mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private mTargetArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x3dcccccd

    sput v0, Lcom/baidu/internal/keyguard/space/TargetView;->mFixPointRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf7

    const/16 v2, 0x25

    .line 187
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 61
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    .line 65
    const/16 v0, 0xd

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mOffsetR:I

    .line 66
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    .line 67
    const/16 v0, 0x88

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    .line 68
    const/16 v0, 0x2f

    const/16 v1, 0xc7

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0xf7

    const/16 v2, 0x25

    .line 191
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 61
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    .line 65
    const/16 v0, 0xd

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mOffsetR:I

    .line 66
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    .line 67
    const/16 v0, 0x88

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    .line 68
    const/16 v0, 0x2f

    const/16 v1, 0xc7

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v3, 0xf7

    const/16 v2, 0x25

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 61
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    .line 65
    const/16 v0, 0xd

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mOffsetR:I

    .line 66
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    .line 67
    const/16 v0, 0x88

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    .line 68
    const/16 v0, 0x2f

    const/16 v1, 0xc7

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->adjustTargetIconPosition()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/internal/keyguard/space/TargetView;Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->vibrate()V

    return-void
.end method

.method private adjustTargetIconPosition()V
    .locals 3

    .prologue
    .line 467
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 469
    .local v1, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->adjustTargetIconPosition(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v1           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    :cond_0
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V
    .locals 16
    .parameter "canvas"
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 302
    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXCruisePoint:F

    add-float v9, v1, v2

    .line 303
    .local v9, drawAX:F
    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYCruisePoint:F

    add-float v10, v1, v2

    .line 304
    .local v10, drawAY:F
    move-object/from16 v0, p3

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move-object/from16 v0, p3

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXCruisePoint:F

    add-float v12, v1, v2

    .line 305
    .local v12, drawBX:F
    move-object/from16 v0, p3

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move-object/from16 v0, p3

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYCruisePoint:F

    add-float v13, v1, v2

    .line 306
    .local v13, drawBY:F
    const/4 v15, 0x0

    .line 307
    .local v15, theta:F
    sub-float v1, v12, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 308
    const v15, 0x3fc90fdb

    .line 312
    :goto_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    .line 313
    .local v8, drawAR:F
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v11, v1

    .line 314
    .local v11, drawBR:F
    const/4 v14, 0x1

    .local v14, r:I
    const/4 v7, 0x1

    .line 315
    .local v7, b:I
    cmpl-float v1, v9, v12

    if-lez v1, :cond_0

    .line 316
    const/4 v14, -0x1

    .line 317
    :cond_0
    cmpl-float v1, v10, v13

    if-lez v1, :cond_1

    .line 318
    const/4 v7, -0x1

    .line 319
    :cond_1
    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v8

    int-to-float v2, v14

    mul-float/2addr v1, v2

    add-float v2, v9, v1

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v8

    int-to-float v3, v7

    mul-float/2addr v1, v3

    add-float v3, v10, v1

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v11

    int-to-float v4, v14

    mul-float/2addr v1, v4

    sub-float v4, v12, v1

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v1, v11

    int-to-float v5, v7

    mul-float/2addr v1, v5

    sub-float v5, v13, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 321
    return-void

    .line 310
    .end local v7           #b:I
    .end local v8           #drawAR:F
    .end local v11           #drawBR:F
    .end local v14           #r:I
    :cond_2
    sub-float v1, v13, v10

    sub-float v2, v12, v9

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v15, v1

    goto :goto_0
.end method

.method private ringIntersectProcess()V
    .locals 21

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v13, v17, 0x2

    .line 475
    .local v13, radiusHandle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v14, v17, 0x2

    .line 476
    .local v14, radiusMessage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v12, v17, 0x2

    .line 477
    .local v12, radiusCamera:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v15, v17, 0x2

    .line 478
    .local v15, radiusPhone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v16, v17, 0x2

    .line 479
    .local v16, radiusUnlock:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 480
    .local v2, a:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 481
    .local v3, b:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 482
    .local v6, distanceMessage:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 483
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 484
    .local v4, distanceCamera:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 485
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 486
    .local v8, distancePhone:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 487
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 488
    .local v10, distanceUnlock:D
    add-int v17, v14, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v6, v17

    if-gez v17, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 501
    :goto_0
    return-void

    .line 490
    :cond_0
    add-int v17, v12, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v4, v17

    if-gez v17, :cond_1

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 492
    :cond_1
    add-int v17, v16, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v10, v17

    if-gez v17, :cond_2

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 494
    :cond_2
    add-int v17, v15, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v8, v17

    if-gez v17, :cond_3

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 496
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->isDraging()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 499
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 674
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/16 v4, 0xff

    const/high16 v3, 0x3fc0

    .line 325
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 326
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 327
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 328
    const/4 v8, 0x0

    .line 329
    .local v8, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    check-cast v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 331
    .restart local v8       #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->updateCruisePosition()V

    .line 329
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->adjustTargetIconPosition()V

    .line 334
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->ringIntersectProcess()V

    .line 336
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-eq v0, v1, :cond_5

    .line 339
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 340
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 341
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 342
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 344
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 345
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    check-cast v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 346
    .restart local v8       #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    const/4 v7, 0x0

    .line 347
    .local v7, image:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_3

    .line 348
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 354
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 355
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v8}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 358
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget v0, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXCruisePoint:F

    add-float/2addr v0, v1

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYCruisePoint:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 344
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 349
    :cond_3
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_4

    .line 350
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 351
    :cond_4
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_1

    .line 352
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 366
    .end local v7           #image:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v8, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 367
    const/4 v7, 0x0

    .line 368
    .restart local v7       #image:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_9

    .line 369
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 370
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 378
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 379
    iget v0, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 381
    :cond_7
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-ne v0, v1, :cond_8

    .line 382
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 383
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    :goto_4
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 390
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 391
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 392
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c

    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    const v3, 0x40666666

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 393
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    :cond_8
    iget-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->postInvalidateDelayed(J)V

    .line 399
    return-void

    .line 371
    :cond_9
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_a

    .line 372
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 373
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 374
    :cond_a
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_6

    .line 375
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 376
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 384
    :cond_b
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 385
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 387
    :cond_c
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 414
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 418
    .local v1, ea:I
    packed-switch v1, :pswitch_data_0

    .line 463
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 420
    :pswitch_0
    const/4 v3, 0x0

    .line 421
    .local v3, r:I
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    .line 422
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 426
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v6, v6, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    int-to-float v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v7, v7, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 427
    .local v2, handleRect:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->startDrag()V

    .line 429
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDX:F

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDY:F

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    goto :goto_0

    .line 424
    .end local v2           #handleRect:Landroid/graphics/RectF;
    :cond_2
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    goto :goto_1

    .line 436
    .end local v3           #r:I
    :pswitch_1
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->isDraging()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 437
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDX:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDY:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->setPosition(FF)V

    .line 439
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    goto/16 :goto_0

    .line 443
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->startTargetIntentOrDismissKeyguard()Z

    move-result v4

    if-nez v4, :cond_4

    .line 444
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->endDrag()V

    .line 445
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 460
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    goto/16 :goto_0

    .line 448
    :cond_4
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/baidu/internal/keyguard/space/TargetView$1;

    invoke-direct {v5, p0}, Lcom/baidu/internal/keyguard/space/TargetView$1;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "TargetHandlePanel"

    const-string v5, "set state to idle fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getResourceData()[[F
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v3, v2, v4

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v3, v2, v5

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v3, v2, v6

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 35

    .prologue
    .line 232
    invoke-super/range {p0 .. p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/internal/keyguard/space/TargetView;->mStartTime:J

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_camera_normal#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 235
    .local v4, cameraNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_camera_pressed#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 236
    .local v5, cameraPressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_phone_normal#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 237
    .local v32, phoneNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_phone_pressed#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 238
    .local v9, phonePressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_message_normal#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 239
    .local v31, messageNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_message_pressed#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 240
    .local v13, messagePressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_unlock_normal#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 241
    .local v34, unlockNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_unlock_pressed#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 242
    .local v17, unlockPressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_handle_normal#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 243
    .local v29, handleNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #drawable@baidu_keyguard_space_handle_pressed#t

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 244
    .local v21, handlePressedBmp:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v6, 0xf7

    const/16 v7, 0x13b

    sget-object v8, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 245
    new-instance v6, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v10, 0x4e

    const/16 v11, 0x198

    sget-object v12, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v7, p0

    move-object/from16 v8, v32

    invoke-direct/range {v6 .. v12}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 246
    new-instance v10, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v14, 0x134

    const/16 v15, 0x1ad

    sget-object v16, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v11, p0

    move-object/from16 v12, v31

    invoke-direct/range {v10 .. v16}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 247
    new-instance v14, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v18, 0xb5

    const/16 v19, 0x21a

    sget-object v20, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v15, p0

    move-object/from16 v16, v34

    invoke-direct/range {v14 .. v20}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 248
    new-instance v18, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v22, 0xb4

    const/16 v23, 0x1af

    sget-object v24, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v19, p0

    move-object/from16 v20, v29

    invoke-direct/range {v18 .. v24}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 254
    .local v33, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->setTargetHandle(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    goto :goto_0

    .line 256
    .end local v33           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x10e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #anim@fade_out#t

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x10e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    new-instance v22, Landroid/view/animation/RotateAnimation;

    const/high16 v23, 0x43b4

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/high16 v26, 0x3f00

    const/16 v27, 0x1

    const/high16 v28, 0x3f00

    invoke-direct/range {v22 .. v28}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/space/TargetView;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 262
    const-wide/16 v2, 0x14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 263
    return-void
.end method

.method public onCallMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 689
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 288
    .local v1, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    :cond_0
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 286
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v1           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    :cond_4
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 299
    return-void
.end method

.method public onPowerUpdate(II)V
    .locals 3
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 402
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

    .line 403
    if-eqz p2, :cond_0

    .line 404
    int-to-float v0, p1

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    .line 409
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    goto :goto_0
.end method

.method public onSmsMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 677
    iput p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mMissMsgCount:I

    .line 678
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 658
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-eq v1, p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 202
    .local v0, oldState:Lcom/baidu/internal/keyguard/space/TargetView$State;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/space/TargetView$State;->leave()V

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 206
    const-string v1, "TargetHandlePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/space/TargetView$State;->enter(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 208
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/space/TargetView$State;->draw()V

    .line 210
    .end local v0           #oldState:Lcom/baidu/internal/keyguard/space/TargetView$State;
    :cond_1
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 661
    if-eqz p1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public startTargetIntentOrDismissKeyguard()Z
    .locals 4

    .prologue
    .line 213
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/space/TargetView$State;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-ne v2, v3, :cond_2

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 224
    const/4 v2, 0x1

    .line 227
    :goto_1
    return v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TargetHandlePanel"

    const-string v3, "startActivity fail:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public stopCruise()V
    .locals 2

    .prologue
    .line 693
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 694
    return-void
.end method
