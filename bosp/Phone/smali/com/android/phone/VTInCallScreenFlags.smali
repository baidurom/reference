.class public Lcom/android/phone/VTInCallScreenFlags;
.super Ljava/lang/Object;
.source "VTInCallScreenFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;
    }
.end annotation


# static fields
.field private static final mVTInCallScreenFlags:Lcom/android/phone/VTInCallScreenFlags;


# instance fields
.field public mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

.field public mVTFrontCameraNow:Z

.field public mVTFullScreen:Z

.field public mVTHasReceiveFirstFrame:Z

.field public mVTHideMeNow:Z

.field public mVTInControlRes:Z

.field public mVTInEndingCall:Z

.field public mVTInLocalBrightnessSetting:Z

.field public mVTInLocalContrastSetting:Z

.field public mVTInLocalZoomSetting:Z

.field public mVTInSnapshot:Z

.field public mVTInSwitchCamera:Z

.field public mVTIsInflate:Z

.field public mVTIsMT:Z

.field public mVTPeerBigger:Z

.field public mVTSettingReady:Z

.field public mVTShouldCloseVTManager:Z

.field public mVTSurfaceChangedH:Z

.field public mVTSurfaceChangedL:Z

.field public mVTVideoConnected:Z

.field public mVTVideoReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/android/phone/VTInCallScreenFlags;

    invoke-direct {v0}, Lcom/android/phone/VTInCallScreenFlags;-><init>()V

    sput-object v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInCallScreenFlags:Lcom/android/phone/VTInCallScreenFlags;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTIsInflate:Z

    .line 38
    new-instance v0, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-direct {v0, p0}, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;-><init>(Lcom/android/phone/VTInCallScreenFlags;)V

    iput-object v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreenFlags;->reset()V

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/android/phone/VTInCallScreenFlags;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInCallScreenFlags:Lcom/android/phone/VTInCallScreenFlags;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTIsMT:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 46
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 60
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 63
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 67
    return-void
.end method

.method public resetPartial()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTIsMT:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 85
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 88
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 92
    return-void
.end method

.method public resetTiming()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 113
    :cond_0
    return-void
.end method
